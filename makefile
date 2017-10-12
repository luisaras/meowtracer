OBJS = main.o Sphere.o Light.o DirectionalLight.o PointLight.o SpotLight.o DefaultRenderer.o CelRenderer.o BlinnPhongRenderer.o Scene.o Image.o OrthogonalCamera.o PerspectiveCamera.o Renderer.o NormalRenderer.o MapRenderer.o DiffuseRenderer.o InputData.o

CPP_FLAGS= -O3

all: main

main: $(OBJS)
	g++ -o main $(OBJS) -ljson_spirit

main.o: main.cpp
	g++ -c $(CPP_FLAGS) main.cpp

Sphere.o: src/Sphere.cpp
	g++ -c $(CPP_FLAGS) src/Sphere.cpp include/Sphere.h

Light.o: src/Light.cpp
	g++ -c $(CPP_FLAGS) src/Light.cpp include/Light.h

DirectionalLight.o: src/DirectionalLight.cpp
	g++ -c $(CPP_FLAGS) src/DirectionalLight.cpp include/DirectionalLight.h

PointLight.o: src/PointLight.cpp
	g++ -c $(CPP_FLAGS) src/PointLight.cpp include/PointLight.h

SpotLight.o: src/SpotLight.cpp
	g++ -c $(CPP_FLAGS) src/SpotLight.cpp include/SpotLight.h

Scene.o: src/Scene.cpp
	g++ -c $(CPP_FLAGS) src/Scene.cpp include/Scene.h

Image.o: src/Image.cpp
	g++ -c $(CPP_FLAGS) src/Image.cpp include/Image.h

Renderer.o: src/Renderer/Renderer.cpp
	g++ -c $(CPP_FLAGS) src/Renderer/Renderer.cpp include/Renderer/Renderer.h

NormalRenderer.o: src/Renderer/NormalRenderer.cpp
	g++ -c $(CPP_FLAGS) src/Renderer/NormalRenderer.cpp include/Renderer/NormalRenderer.h

MapRenderer.o: src/Renderer/MapRenderer.cpp
	g++ -c $(CPP_FLAGS) src/Renderer/MapRenderer.cpp include/Renderer/MapRenderer.h

DiffuseRenderer.o: src/Renderer/DiffuseRenderer.cpp
	g++ -c $(CPP_FLAGS) src/Renderer/DiffuseRenderer.cpp include/Renderer/DiffuseRenderer.h

BlinnPhongRenderer.o: src/Renderer/BlinnPhongRenderer.cpp
	g++ -c $(CPP_FLAGS) src/Renderer/BlinnPhongRenderer.cpp include/Renderer/BlinnPhongRenderer.h

CelRenderer.o: src/Renderer/CelRenderer.cpp
	g++ -c $(CPP_FLAGS) src/Renderer/CelRenderer.cpp include/Renderer/CelRenderer.h

DefaultRenderer.o: src/Renderer/DefaultRenderer.cpp
	g++ -c $(CPP_FLAGS) src/Renderer/DefaultRenderer.cpp include/Renderer/DefaultRenderer.h

InputData.o: src/InputData.cpp
	g++ -c $(CPP_FLAGS) src/InputData.cpp include/InputData.h

OrthogonalCamera.o: src/OrthogonalCamera.cpp
	g++ -c $(CPP_FLAGS) src/OrthogonalCamera.cpp include/OrthogonalCamera.h

PerspectiveCamera.o: src/PerspectiveCamera.cpp
	g++ -c $(CPP_FLAGS) src/PerspectiveCamera.cpp include/PerspectiveCamera.h

clean:
	rm -f *.o *~ include/*.h.gch include/Renderer/*.h.gch