echo "Preparing demo directory..."
rm -rf demo
mkdir -p demo/pics/gnuplot
mkdir -p demo/pics/pngs

echo "Compiling..."
g++ -lcln -lginac main.cpp -o demo/SimpleInt

echo "Copying..."
cp inputf.txt demo/

echo "Launching..."
cd demo
./SimpleInt

echo "Creating .png files..."
cd pics
for f in gnuplot/*.gnu 
do
	echo "Processing $f..."
	gnuplot "$f"
done

echo "Look!"
feh pngs/*.png &

cd ../../
