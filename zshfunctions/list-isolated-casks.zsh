# Taken from https://www.thingy-ma-jig.co.uk/blog/22-09-2014/homebrew-list-packages-and-what-uses-them
# List packages and what uses them 
#
echo ""
echo "Listing packages and what uses them..."
echo "All the casks here that has nothing using it is either an orphaned cask or a pkg you installed in a remote past. Do you still need it? :)"
echo ""

brew list --formula -1 | while read cask; do 
        echo "\x1B[1;34m $cask \x1B[0m"; 
        brew uses $cask --installed | awk '{printf(" %s ", $0)}'; 
        echo ""; 
done
