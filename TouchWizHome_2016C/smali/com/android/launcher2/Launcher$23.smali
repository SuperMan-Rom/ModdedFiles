.class Lcom/android/launcher2/Launcher$23;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->onClickPopupMenuButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method
