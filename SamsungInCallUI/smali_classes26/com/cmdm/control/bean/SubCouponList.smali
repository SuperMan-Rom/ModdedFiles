.class public Lcom/cmdm/control/bean/SubCouponList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "SubCouponList"
.end annotation


# instance fields
.field public subCouponList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "subCoupon"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/SubCoupon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
