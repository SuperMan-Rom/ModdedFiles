.class public Lcom/samsung/android/settings/powersaving/LowBatteryActivity;
.super Landroid/app/Activity;
.source "LowBatteryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;,
        Lcom/samsung/android/settings/powersaving/LowBatteryActivity$BatteryPhase;,
        Lcom/samsung/android/settings/powersaving/LowBatteryActivity$BatteryPluggedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableTime:I

.field private mBatteryLevel:I

.field private mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPercentInCircleTv:Landroid/widget/TextView;

.field private mBatteryPercentSymbolInCircleTv:Landroid/widget/TextView;

.field private mBatteryPluggedState:I

.field private mButtonBackground:Landroid/widget/LinearLayout;

.field private mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mExtendedBatteryTime:I

.field private mIsBatteryStatusCharging:Z

.field private mIsBatteryStatusUnknown:Z

.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mMaxButton:Landroid/widget/LinearLayout;

.field private mMaxTextCust:Landroid/widget/TextView;

.field private mMaxTextMain:Landroid/widget/TextView;

.field private mMaxTextSub:Landroid/widget/TextView;

.field private mMidButton:Landroid/widget/LinearLayout;

.field private mMidTextCust:Landroid/widget/TextView;

.field private mMidTextMain:Landroid/widget/TextView;

.field private mMidTextSub:Landroid/widget/TextView;

.field private mOffButton:Landroid/widget/LinearLayout;

.field private mOffTextMain:Landroid/widget/TextView;

.field private mOffTextSub:Landroid/widget/TextView;

.field private mRemainTimeInCircleTv:Landroid/widget/TextView;

.field private mWarningDesc:Landroid/widget/TextView;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPluggedState:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mIsBatteryStatusCharging:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mIsBatteryStatusUnknown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updateBatteryStatus()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    new-instance v0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;-><init>(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getCurrentPowerMode()I
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    const/4 v1, 0x2

    :cond_0
    :goto_2
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_2
.end method

.method private registerBatteryStatusReceiver()V
    .locals 2

    new-instance v1, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;-><init>(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setBatteryStatus()V
    .locals 10

    const v9, 0x7f0700b3

    const v8, 0x7f0601e8

    const v7, 0x7f0601e6

    const/4 v6, 0x5

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const v2, 0x7f12032d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    if-gt v1, v6, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iput v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mAvailableTime:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    if-gt v1, v6, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const v2, 0x7f0700b5

    const v3, 0x7f0700b6

    invoke-static {p0, v0, v2, v3, v7}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const v2, 0x7f0700b5

    const v3, 0x7f0700b6

    invoke-static {p0, v0, v2, v3, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_0

    iget v3, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    if-gt v3, v5, :cond_2

    const v3, 0x7f06015f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    if-eqz p3, :cond_5

    if-eqz p2, :cond_3

    const v3, 0x7f0601b6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_2
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0a0497

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f0a0498

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0a015e

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f0a015f

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0a0712

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f0a0713

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0a0119

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f0a011a

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_2
    const v3, 0x7f060163

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    :cond_3
    iget v3, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    if-gt v3, v5, :cond_4

    const v3, 0x7f06015c

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    :cond_4
    const v3, 0x7f060160

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    :cond_5
    const v3, 0x7f0601af

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private unregisterContentObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterReceivers()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private updateBatteryStatus()V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f0601e8

    const v4, 0x7f0601e6

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBatteryStatus()V

    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v6}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    const v2, 0x7f1210c4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentSymbolInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v6}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    const v2, 0x7f1210c2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentSymbolInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updatePowerSavingButton(I)V
    .locals 12

    const v11, 0x7f0601b5

    const/16 v7, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mButtonBackground:Landroid/widget/LinearLayout;

    const/4 v8, 0x3

    invoke-direct {p0, v8, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v10, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-direct {p0, v6, v6, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_0
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-direct {p0, v10, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v8, 0x7f0601b7

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    const v8, 0x7f0601b7

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v8, 0x5

    if-gt v5, v8, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v8, 0x7f06015e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    const v8, 0x7f06015d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    iget v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    invoke-static {p0, v6, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v3

    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    iget v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    invoke-static {p0, v9, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v2

    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    iget v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    invoke-static {p0, v10, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v1

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v5, 0x7f120537

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v3, :cond_f

    if-eqz p1, :cond_f

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v5, 0x7f120535

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v2, :cond_10

    if-eq p1, v9, :cond_10

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v5, 0x7f12053c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v1, :cond_11

    if-eq p1, v10, :cond_11

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_8
    sget-object v5, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePowerSavingButton, mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, v10, v6, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_0

    :cond_2
    move v5, v7

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0, v6, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_2

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f060162

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f060161

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_5
    if-ne p1, v9, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v6, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_9
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    invoke-direct {p0, v10, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_a
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v8, 0x7f0601b7

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    const v8, 0x7f0601b7

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    invoke-direct {p0, v6, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_b
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v8, 0x5

    if-gt v5, v8, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f06015e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f06015d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_c
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_6
    move v5, v7

    goto :goto_9

    :cond_7
    invoke-direct {p0, v6, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_a

    :cond_8
    invoke-direct {p0, v10, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_b

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f060162

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f060161

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c

    :cond_a
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    invoke-direct {p0, v10, v9, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_d
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v8, 0x5

    if-gt v5, v8, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v8, 0x7f06015e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    const v8, 0x7f06015d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_e
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    invoke-direct {p0, v6, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_f
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v8, 0x5

    if-gt v5, v8, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f06015e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f06015d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_10
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    invoke-direct {p0, v6, v9, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_d

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v8, 0x7f060162

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    const v8, 0x7f060161

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    :cond_d
    invoke-direct {p0, v10, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_f

    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f060162

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f060161

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_10

    :cond_f
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_10
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_11
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_12
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LowBattery"

    invoke-static {p0, v2, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "LowBattery"

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a06ab -> :sswitch_2
        0x7f0a06af -> :sswitch_1
        0x7f0a06b3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0d0189

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setContentView(I)V

    const v1, 0x7f0a017d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const v1, 0x7f0a00db

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    const v1, 0x7f0a00dc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentSymbolInCircleTv:Landroid/widget/TextView;

    const v1, 0x7f0a06eb

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const v1, 0x7f0a0971

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0185

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    const v1, 0x7f0a06bb

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mButtonBackground:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mButtonBackground:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v3, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a06b3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    const v1, 0x7f0a06af

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    const v1, 0x7f0a06ab

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    const v1, 0x7f0a06b4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v1, 0x7f0a06b5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    const v1, 0x7f0a06b1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v1, 0x7f0a06b2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    const v1, 0x7f0a06b0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    const v1, 0x7f0a06ad

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v1, 0x7f0a06ae

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v1, 0x7f0a06ac

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120537

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120535

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12053c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070558

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070553

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->unregisterContentObserver()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->unregisterReceivers()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerContentObserver()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerBatteryStatusReceiver()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updateBatteryStatus()V

    return-void
.end method
