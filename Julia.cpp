#include <cmath>

#include "Julia.h"

JuliaImageProvider::JuliaImageProvider ()
    : QQuickImageProvider(QQuickImageProvider::Pixmap)
{ }


QPixmap JuliaImageProvider::requestPixmap (const QString & id, QSize * size, const QSize &) {
    int w = 1000, h = 1000;

    *size = QSize(w, h);

    QImage image(w, h, QImage::Format_RGB32);

    for (int x=0; x < w; x++) {
        for (int y=0; y < h; y++) {
            Complex z, _z, c;

            QStringList params = id.split(";");
            c.re = params[0].toFloat();
            c.im = params[1].toFloat();

            float r = 2;

            z.re = r * (2.0 * x / (w-1) - 1);
            z.im = r * (2.0 * y / (h-1) - 1);

            QColor color;

            for (int i=0; i < 16; i++) {
                _z.re = z.re * z.re - z.im * z.im + c.re;
                _z.im = 2.0 * z.re * z.im + c.im;
                z = _z;

                if (sqrt(z.re * z.re + z.im * z.im) > 16) {
                    float f = (float) i / 16;
                    color = QColor(f*255, f*255, f*255).rgba();
                    break;
                }
            }

            image.setPixel(x, y, color.rgba());
        }
    }

    return QPixmap::fromImage(image);
}
