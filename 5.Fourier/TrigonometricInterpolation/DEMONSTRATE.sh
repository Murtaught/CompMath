echo "Preparing demo directory..."
rm -rf demo
mkdir demo

echo "Compiling..."
g++ -lcln -lginac main.cpp -o demo/fourier

echo "Copying..."
cp options.txt demo/

echo "Launching..."
cd demo
./fourier

echo "Creating .png files..."
gnuplot plot.gp

echo "Look!"
feh *.png &

cd ../
