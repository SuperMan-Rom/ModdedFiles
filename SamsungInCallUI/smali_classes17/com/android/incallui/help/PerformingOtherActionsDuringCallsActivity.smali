.class public Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;
.super Landroid/app/Activity;
.source "PerformingOtherActionsDuringCallsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    const v4, 0x7f040074

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;->setContentView(I)V

    const-string v4, "feature_vzw"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f100151

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f0203e0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f0900b4

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const v6, 0x7f09025a

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f100154

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0900b2

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f09027d

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f090261

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f10008c

    invoke-virtual {p0, v4}, Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/incallui/help/PerformingOtherActionsDuringCallsActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
