.class final Landroid/view/Display$ColorTransform$1;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display$ColorTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/Display$ColorTransform;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/Display$ColorTransform;
    .locals 2

    new-instance v0, Landroid/view/Display$ColorTransform;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/Display$ColorTransform;-><init>(Landroid/os/Parcel;Landroid/view/Display$ColorTransform;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/Display$ColorTransform$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/Display$ColorTransform;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/Display$ColorTransform;
    .locals 1

    new-array v0, p1, [Landroid/view/Display$ColorTransform;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/Display$ColorTransform$1;->newArray(I)[Landroid/view/Display$ColorTransform;

    move-result-object v0

    return-object v0
.end method
