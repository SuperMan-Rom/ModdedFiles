.class Lcom/android/launcher2/PkgResCache$PkgEntry;
.super Ljava/lang/Object;
.source "PkgResCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PkgResCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PkgEntry"
.end annotation


# instance fields
.field public icon:Landroid/graphics/Bitmap;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/PkgResCache$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>()V

    return-void
.end method
