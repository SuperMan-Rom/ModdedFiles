.class final Lcom/yulore/sdk/ivr/model/ShortcutNode$1;
.super Ljava/lang/Object;
.source "ShortcutNode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/sdk/ivr/model/ShortcutNode;
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
        "Lcom/yulore/sdk/ivr/model/ShortcutNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulore/sdk/ivr/model/ShortcutNode;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 55
    new-instance v0, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    invoke-direct {v0, p1}, Lcom/yulore/sdk/ivr/model/ShortcutNode;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/yulore/sdk/ivr/model/ShortcutNode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulore/sdk/ivr/model/ShortcutNode;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulore/sdk/ivr/model/ShortcutNode;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 50
    new-array v0, p1, [Lcom/yulore/sdk/ivr/model/ShortcutNode;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/yulore/sdk/ivr/model/ShortcutNode$1;->newArray(I)[Lcom/yulore/sdk/ivr/model/ShortcutNode;

    move-result-object v0

    return-object v0
.end method