.class Ljava/util/XMLUtils$EH;
.super Ljava/lang/Object;
.source "XMLUtils.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/XMLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EH"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/XMLUtils$EH;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/XMLUtils$EH;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    throw p1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    throw p1
.end method
