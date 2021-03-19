#sudo cp cinemart /etc/nginx/sites-available/cinemart
#sudo ln -s /etc/nginx/sites-available/cinemart /etc/nginx/sites-enabled/cinemart
git clone -b report https://github.com/violeine/cinemart-frontend
cd cinemart-frontend && \
	npm install && \
	npm run build && \
	cd ..
git clone -b main https://github.com/anhvuk13/cinemart-backend
docker-compose down 2> /dev/null
docker-compose up -d
