.class public Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "BillingCycleChnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleChnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# instance fields
.field private mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleChnSettings;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "template"

    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get1(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "DatePickDialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/BillingCycleChnSettings;

    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPicker;->clearFocus()V

    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_package_start_date_value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_package_start_date_value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v4}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleChnSettings;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0179

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0173

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3, v2, v0}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/BillingCycleChnSettings;

    iget-object v9, v5, Lcom/android/settings/datausage/BillingCycleChnSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v9, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v9, 0x7f0d00b2

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a01f5

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    const v9, 0x7f0a08b6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v1, v7}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "template"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v6}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v2

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v11}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v10, 0x1f

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v11}, Lcom/samsung/android/widget/SemNumberPicker;->setWrapSelectorWheel(Z)V

    const v9, 0x7f1206f8

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f1206f6

    invoke-virtual {v9, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    invoke-virtual {v9, v10, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9
.end method
