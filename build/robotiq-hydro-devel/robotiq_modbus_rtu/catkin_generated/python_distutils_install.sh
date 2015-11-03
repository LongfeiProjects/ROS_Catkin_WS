#!/bin/sh -x

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

cd "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_modbus_rtu"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
/usr/bin/env \
    PYTHONPATH="/home/longfei/catkin_ws/install/lib/python2.7/dist-packages:/home/longfei/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/longfei/catkin_ws/build" \
    "/usr/bin/python" \
    "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_modbus_rtu/setup.py" \
    build --build-base "/home/longfei/catkin_ws/build/robotiq-hydro-devel/robotiq_modbus_rtu" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/longfei/catkin_ws/install" --install-scripts="/home/longfei/catkin_ws/install/bin"
