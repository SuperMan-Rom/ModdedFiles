.class public Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseOut;
.super Ljava/lang/Object;
.source "BackEaseOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private overshot:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseOut;->overshot:F

    return-void
.end method

.method private out(FF)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const p2, 0x3fd9cd60

    :cond_0
    sub-float/2addr p1, v2

    mul-float v0, p1, p1

    add-float v1, p2, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseOut;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseOut;->out(FF)F

    move-result v0

    return v0
.end method
