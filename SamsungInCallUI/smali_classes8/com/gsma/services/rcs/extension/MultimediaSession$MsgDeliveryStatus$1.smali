.class final Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus$1;
.super Ljava/lang/Object;
.source "MultimediaSession.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
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
        "Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    .locals 1

    new-array v0, p1, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus$1;->newArray(I)[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    move-result-object v0

    return-object v0
.end method