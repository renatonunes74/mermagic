# class=$(find . -name "*.class" -print0 | xargs -0 javap)
METADATA=$(cat mermaid.md)
CLASS=$(echo "$METADATA" | grep "Compiled from" | sed -e 's/Compiled"//;s/\.java"//')
echo -e "\`\`\`mermaid\nclassDiagram";
for i in $CLASS; do
	echo "$METADATA" |
	sed -e 's/public.*interface.*/<<interface>>/' |
		sed -n '/'"$i.java"'/,/\}/p' |
		grep -v "{" |
		sed -e 's/Compiled from "/class /' |
		sed -e 's/\.java"/ \{/' |
		sed -e 's/private /-/' |
		sed -e 's/public /+/' |
		sed -e 's/protected /#/' |
		# Verificar
		sed -e 's/ final //g' |
		sed -e 's/java.lang.//g' |
		sed -e 's/org.springframework.//g' |
		sed -e 's/http.ResponseEntity //g'
	done
	# Relação das classes
	# interface
	INTERFACE=$(echo "$METADATA" | grep "interface") 
	echo "$INTERFACE" | while IFS= read -r line; do
	echo $(echo "$line" | sed -e 's/.*\.\([^ ]*\) extends.*/\1 ..|>/'; echo "$line" | sed -e 's/.*\.\([^ ,]*\),.*/\1 : Realization/')
done

echo "\`\`\`"
