.class public Lcom/android/incallui/bike/BikeModeTimer;
.super Landroid/os/CountDownTimer;
.source "BikeModeTimer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BikeModeTimer"

.field public static final TYPE_ANSWER_TIMER:I = 0x4

.field public static final TYPE_DTMF_TIMER:I = 0x0

.field public static final TYPE_GUIDANCE_DELAY_TIMER:I = 0x3

.field public static final TYPE_URGENT_CALL_MUTE_TIMER:I = 0x2

.field public static final TYPE_URGENT_CALL_RING_TIMER:I = 0x1


# instance fields
.field private final mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

.field private final mTimerType:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/bike/BikeModeController;JJI)V
    .locals 4
    .param p1, "bikeModeController"    # Lcom/android/incallui/bike/BikeModeController;
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J
    .param p6, "type"    # I

    .prologue
    .line 25
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 26
    const-string v0, "BikeModeTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer started on timerType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeTimer;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    .line 28
    iput p6, p0, Lcom/android/incallui/bike/BikeModeTimer;->mTimerType:I

    .line 29
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .prologue
    .line 33
    const-string v3, "BikeModeTimer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFinish: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/bike/BikeModeTimer;->mTimerType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget v3, p0, Lcom/android/incallui/bike/BikeModeTimer;->mTimerType:I

    packed-switch v3, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeTimer;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v3}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    .line 37
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 38
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v0    # "activeCall":Lcom/android/incallui/Call;
    :pswitch_1
    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeTimer;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v3}, Lcom/android/incallui/bike/BikeModeController;->getBikeModeAudioManager()Lcom/android/incallui/bike/BikeModeAudioManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    .line 45
    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeTimer;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    const/16 v4, 0x7530

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/bike/BikeModeController;->startBikeModeTimer(II)V

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeTimer;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v3}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    .line 50
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 51
    .local v1, "activeOrBackgroundCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCallAnswered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeTimer;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v3}, Lcom/android/incallui/bike/BikeModeController;->getBikeModeAudioManager()Lcom/android/incallui/bike/BikeModeAudioManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/bike/BikeModeAudioManager;->switchAudioRouting(Z)V

    .line 53
    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v1    # "activeOrBackgroundCall":Lcom/android/incallui/Call;
    :pswitch_3
    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeTimer;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v3}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    .line 61
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 62
    .local v2, "call":Lcom/android/incallui/Call;
    if-eqz v2, :cond_0

    .line 63
    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeTimer;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v3}, Lcom/android/incallui/bike/BikeModeController;->getBikeModeAudioManager()Lcom/android/incallui/bike/BikeModeAudioManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/bike/BikeModeAudioManager;->playEnglishGuidance()V

    goto :goto_0

    .line 67
    .end local v2    # "call":Lcom/android/incallui/Call;
    :pswitch_4
    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeTimer;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v3}, Lcom/android/incallui/bike/BikeModeController;->answerBikeCall()V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 77
    return-void
.end method