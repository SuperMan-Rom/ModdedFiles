.class Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;
.super Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;
.source "AlphabeticalListIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnPressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-direct {p0, p1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;-><init>(Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;->run()V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$UnPressRunnable;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->invalidate()V

    return-void
.end method
