.class Lcom/samsung/android/settings/iris/IrisLockSettings$8;
.super Ljava/lang/Object;
.source "IrisLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$8;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$8;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-set0(Lcom/samsung/android/settings/iris/IrisLockSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
