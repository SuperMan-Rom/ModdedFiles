.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;
.super Ljava/lang/Object;
.source "VoiceCallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment;->inflateInCallButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 846
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 847
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->shareClicked(Z)V

    .line 848
    return-void

    .line 847
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method