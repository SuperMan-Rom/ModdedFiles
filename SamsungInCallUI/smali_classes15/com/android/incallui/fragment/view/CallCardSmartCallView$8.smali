.class Lcom/android/incallui/fragment/view/CallCardSmartCallView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCardSmartCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallPhotoFilter(Lcom/android/incallui/fragment/VoiceCallCardFragment;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/view/CallCardSmartCallView;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$8;->this$0:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$8;->this$0:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->access$400(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 846
    return-void
.end method