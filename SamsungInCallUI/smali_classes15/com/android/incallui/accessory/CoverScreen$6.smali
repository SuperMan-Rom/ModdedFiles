.class Lcom/android/incallui/accessory/CoverScreen$6;
.super Ljava/lang/Object;
.source "CoverScreen.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/accessory/CoverScreen;->updateTextColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/accessory/CoverScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$6;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$6;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$900(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$6;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$900(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$6;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$1000(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/Chronometer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$6;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$1000(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/Chronometer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 837
    :cond_1
    return-void
.end method