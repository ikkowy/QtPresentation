#pragma once

#include <QQuickImageProvider>

struct Complex { float re, im; };

class JuliaImageProvider : public QQuickImageProvider {
public:
    JuliaImageProvider ();
    QPixmap requestPixmap (const QString & id, QSize * size, const QSize &) override;
};
