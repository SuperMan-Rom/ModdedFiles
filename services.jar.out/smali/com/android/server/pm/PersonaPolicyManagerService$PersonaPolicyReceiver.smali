.class Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PersonaPolicyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "PersonaPolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PersonaPolicyReceiver Receiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaPolicyManagerService;->-wrap0(Lcom/android/server/pm/PersonaPolicyManagerService;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaPolicyManagerService;->-wrap0(Lcom/android/server/pm/PersonaPolicyManagerService;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string/jumbo v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v9, :cond_0

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaPolicyManagerService;->-wrap0(Lcom/android/server/pm/PersonaPolicyManagerService;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaPolicyManagerService;->-wrap0(Lcom/android/server/pm/PersonaPolicyManagerService;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PersonaPolicyManagerService;->mLocalPkgAddedCache:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "PersonaPolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PersonaPolicyReceiver - Added persona packagename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " and user-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
