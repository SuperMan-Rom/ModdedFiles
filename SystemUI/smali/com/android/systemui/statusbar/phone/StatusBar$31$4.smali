.class Lcom/android/systemui/statusbar/phone/StatusBar$31$4;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$31;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$31;Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$4;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$4;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$4;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$4;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method
