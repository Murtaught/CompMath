echo "Preparing demo directory..."
rm -rf demo
mkdir demo

echo "Compiling..."
g++ -lcln -lginac main.cpp -o demo/EulerMethod

echo "Copying..."
cp options.txt plot.gp demo/

echo "Launching..."
cd demo
./EulerMethod

echo "Creating .png files..."
gnuplot plot.gp

echo "Look!"
feh *.png &

cd ../../
