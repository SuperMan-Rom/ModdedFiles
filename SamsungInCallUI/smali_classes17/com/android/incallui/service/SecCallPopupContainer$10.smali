.class Lcom/android/incallui/service/SecCallPopupContainer$10;
.super Landroid/view/View$AccessibilityDelegate;
.source "SecCallPopupContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$10;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method