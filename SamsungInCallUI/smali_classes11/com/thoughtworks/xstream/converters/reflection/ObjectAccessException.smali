.class public Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
.super Lcom/thoughtworks/xstream/XStreamException;
.source "ObjectAccessException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/XStreamException;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/XStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method