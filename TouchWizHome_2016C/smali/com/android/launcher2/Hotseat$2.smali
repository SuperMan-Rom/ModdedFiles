.class final Lcom/android/launcher2/Hotseat$2;
.super Ljava/lang/Object;
.source "Hotseat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Hotseat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/HomeItem;",
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
.method public final compare(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)I
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    iget v1, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v2, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-ne v1, v3, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget v1, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v2, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-ge v1, v2, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher2/HomeItem;

    check-cast p2, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Hotseat$2;->compare(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)I

    move-result v0

    return v0
.end method
