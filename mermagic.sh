METADATA=$(find $1 -name "*.class" -print0 | xargs -0 javap -p |
	# Formatando a metadata 
	# Visibilidade dos atributos
	sed -e 's/private /-/' |
		sed -e 's/public /+/' |
		sed -e 's/protected /#/' |
		sed -e 's/package /~/' |
		# Atributos
			sed -e 's/Integer /Integer : /' |
				sed -e 's/void /void : /' |
				sed -e 's/String /String : /' |
				sed -e 's/boolean /boolean : /' |
				sed -e 's/int /int : /' |
				# Verificar
							sed -e 's/ final //g' |
								sed -e 's/java.lang.//g' |
								sed -e 's/org.springframework.//g' |
								sed -e 's/http.ResponseEntity //g'
							)
							# Verifica em cada classe e formata os métodos
							CLASS=$(echo "$METADATA" | grep "Compiled from" | sed -e 's/Compiled from "//;s/\.java"//')
							echo -e "\`\`\`mermaid\nclassDiagram";
							for i in $CLASS; do
								echo "$METADATA" |
									sed -e 's/public.*interface.*/<<interface>>/' |
									sed -n '/'"$i.java"'/,/\}/p' |
									grep -v "{" |
									sed -e 's/Compiled from "/class /' |
									sed -e 's/\.java"/ \{/'
								done
								INTERFACE=$(echo "$METADATA" | grep "interface") 
								echo "$INTERFACE" | while IFS= read -r line; do
								echo $(echo "$line" | sed -e 's/.*\.\([^ ]*\) extends.*/\1 ..|>/'; echo "$line" | sed -e 's/.*\.\([^ ,]*\),.*/\1 : Realization/')
							done
							echo "\`\`\`"
