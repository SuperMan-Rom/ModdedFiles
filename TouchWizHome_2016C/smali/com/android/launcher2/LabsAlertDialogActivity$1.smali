.class Lcom/android/launcher2/LabsAlertDialogActivity$1;
.super Ljava/lang/Object;
.source "LabsAlertDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LabsAlertDialogActivity;->createDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LabsAlertDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LabsAlertDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LabsAlertDialogActivity$1;->this$0:Lcom/android/launcher2/LabsAlertDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LabsAlertDialogActivity$1;->this$0:Lcom/android/launcher2/LabsAlertDialogActivity;

    invoke-virtual {v0}, Lcom/android/launcher2/LabsAlertDialogActivity;->finish()V

    return-void
.end method
