
#export PGUSER=postgres
export PGUSER=spedata
echo $PGUSER

dropdb test

# Je crèe une bdd appellée "test" dont le propriétaire est "ocolis"
createdb test -O ocolis

echot "tout va bien"