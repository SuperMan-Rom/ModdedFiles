.class public Lcom/android/systemui/qs/DataUsageView;
.super Landroid/widget/TextView;
.source "DataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/DataUsageView$1;,
        Lcom/android/systemui/qs/DataUsageView$2;,
        Lcom/android/systemui/qs/DataUsageView$Formatter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final mIsSupportCHNDataUsageConcept:Z


# instance fields
.field private mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mCurrentDataSubId:I

.field private mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataLimitObserver:Landroid/database/ContentObserver;

.field private mDataUsage:Ljava/lang/String;

.field private mEnd:J

.field private mHandler:Landroid/os/Handler;

.field private mLimitLevel:J

.field private mRegistered:Z

.field private mStart:J

.field private mThread:Ljava/lang/Thread;

.field mUpdateRunnable:Ljava/lang/Runnable;

.field private mUsageLevel:J


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/DataUsageView;)Lcom/android/settingslib/net/DataUsageController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/DataUsageView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/DataUsageView;->mIsSupportCHNDataUsageConcept:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/DataUsageView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/DataUsageView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/DataUsageView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/DataUsageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/DataUsageView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/DataUsageView;Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/DataUsageView;->getTotalUsedData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/DataUsageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->updateDataText()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DataUsageView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    const-string/jumbo v0, "trafficmanager"

    invoke-static {v0}, Lcom/android/systemui/qs/DataUsageView;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/DataUsageView;->mIsSupportCHNDataUsageConcept:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/DataUsageView$1;-><init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/DataUsageView$2;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/DataUsageView$1;-><init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/DataUsageView$2;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/DataUsageView$1;-><init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/DataUsageView$2;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/DataUsageView$1;-><init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/DataUsageView$2;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method private getBounds(I)V
    .locals 11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/4 v2, 0x5

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    if-lt v9, p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    goto :goto_0
.end method

.method private getConfirmTime()J
    .locals 7

    const-string/jumbo v0, "check_time"

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    return-wide v2

    :catch_0
    move-exception v1

    const-string/jumbo v4, "DataUsageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getConfirmTraffic()J
    .locals 12

    const-wide/16 v10, 0x0

    const-string/jumbo v2, "data_used_by_check_time"

    iget-object v7, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    sget-boolean v7, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getConfirmTraffic :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-wide v10

    :cond_2
    :try_start_0
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    mul-double/2addr v4, v8

    double-to-long v0, v4

    const-string/jumbo v7, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getConfirmTraffic "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from setting, confirm bytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :catch_0
    move-exception v3

    const-string/jumbo v7, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v10
.end method

.method private getStartDay()I
    .locals 6

    const-string/jumbo v2, "set_package_start_date_value"

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/16 v3, 0x1f

    if-le v1, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DataUsageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getTotalUsedData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J
    .locals 19

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-string/jumbo v7, "middle_real_value"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/DataUsageView;->getStartDay()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/DataUsageView;->getBounds(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/DataUsageView;->getConfirmTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    move-wide/from16 v16, v0

    cmp-long v16, v2, v16

    if-ltz v16, :cond_0

    cmp-long v16, v2, v4

    if-gtz v16, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v16, v2, v16

    if-eqz v16, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/DataUsageView;->getConfirmTraffic()J

    move-result-wide v10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    :cond_0
    :goto_0
    sub-long v16, v14, v8

    add-long v12, v16, v10

    const-string/jumbo v16, "DataUsageView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "totalTraffic:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " totalUsedBytes:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " realTraffic:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " startTraffic:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v12

    :catch_0
    move-exception v6

    const-string/jumbo v16, "DataUsageView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Exception : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    const v2, 0x7f1208b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : 0 B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/DataUsageView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageView;->updateCurrentDataSubId()V

    sget v0, Lcom/android/mwilky/Renovate;->mQsDataUsageTextColor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static isSupportCHNEnhancedFeature(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DataUsageView"

    const-string/jumbo v1, "registerContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch_traffic_settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    :cond_1
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DataUsageView"

    const-string/jumbo v1, "unregisterContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    :cond_1
    return-void
.end method

.method private updateDataText()V
    .locals 10

    const-wide/16 v8, 0x0

    const v6, 0x7f1208b0

    iget-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    invoke-static {v2, v4, v5}, Lcom/android/systemui/qs/DataUsageView$Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    invoke-static {v3, v4, v5}, Lcom/android/systemui/qs/DataUsageView$Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    :goto_0
    const-string/jumbo v2, "DataUsageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Data Usage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/DataUsageView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : 0 B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getLimitBytes()J
    .locals 12

    const-wide/16 v10, 0x0

    const-string/jumbo v3, "set_data_limit"

    iget-object v7, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageView;->isLimitSet()Z

    move-result v7

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLimitBytes : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide v10

    :cond_1
    :try_start_0
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    mul-double/2addr v0, v8

    double-to-long v4, v0

    const-string/jumbo v7, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLimitBytes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from setting, limit bytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :catch_0
    move-exception v2

    const-string/jumbo v7, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v10
.end method

.method public isLimitSet()Z
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v4, "switch_traffic_settings"

    const-string/jumbo v1, "set_data_limit"

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    if-nez v3, :cond_0

    return v8

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "max"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    return v8

    :cond_2
    const-string/jumbo v5, "DataUsageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Limit enabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5
.end method

.method public updateCurrentDataSubId()V
    .locals 4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    sget-boolean v1, Lcom/android/systemui/qs/DataUsageView;->mIsSupportCHNDataUsageConcept:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->unregisterContentObserver()V

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->registerContentObserver()V

    :cond_0
    sget-boolean v1, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "DataUsageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current Data SubId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public updateUsageInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/DataUsageView$3;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "DataUsageView"

    const-string/jumbo v1, "Last Thread still running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
