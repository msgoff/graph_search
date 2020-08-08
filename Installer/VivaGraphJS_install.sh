git clone https://github.com/anvaka/VivaGraphJS.git
cd VivaGraphJS
npm install
gulp release
pwd
mkdir ../../static/
cp dist/vivagraph.min.js ../../static/
