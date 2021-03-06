.class public Lcom/android/systemui/statusbar/preview/NotificationPreview;
.super Ljava/lang/Object;
.source "NotificationPreview.java"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsClicked:Z

.field private mIsFirstAdded:Z

.field private mKey:Ljava/lang/String;

.field private mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIsClicked:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIsFirstAdded:Z

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mColor:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mContext:Landroid/content/Context;

    return-void
.end method

.method private refreshDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method public isClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIsClicked:Z

    return v0
.end method

.method public isFirstAdded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIsFirstAdded:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mColor:I

    return-void
.end method

.method public setIsClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIsClicked:Z

    return-void
.end method

.method public setIsFirstAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIsFirstAdded:Z

    return-void
.end method

.method public setPreviewIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 9

    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v6, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v6, :cond_2

    move-object v6, v1

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    new-array v4, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    move-object v6, v1

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v1, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIcon:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0a0516

    invoke-virtual {v6, v8, v7}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIcon:Landroid/widget/ImageView;

    const v7, 0x7f0a0515

    invoke-virtual {v6, v7, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIcon:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1
.end method

.method public setPreviewKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method
