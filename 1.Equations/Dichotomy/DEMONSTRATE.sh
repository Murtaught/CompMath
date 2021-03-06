echo "Preparing demo directory..."
rm -rf demo
mkdir -p demo/pics/gnuplot
mkdir -p demo/pics/pngs

echo "Compiling..."
g++ main.cpp -o demo/Dichotomy

echo "Launching..."
cd demo
./Dichotomy

echo "Creating .png files..."
cd pics
for f in gnuplot/*.gnu 
do
	echo "Processing $f..."
	gnuplot "$f"
done

echo "Look!"
eog pngs/*.png &

cd ../../



