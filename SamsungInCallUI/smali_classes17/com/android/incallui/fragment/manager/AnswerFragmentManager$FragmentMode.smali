.class final enum Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;
.super Ljava/lang/Enum;
.source "AnswerFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/manager/AnswerFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FragmentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

.field public static final enum DEFAULT:Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

.field public static final enum THREE_WIDGET:Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    const-string v1, "THREE_WIDGET"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;->THREE_WIDGET:Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    sget-object v1, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;->THREE_WIDGET:Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;
    .locals 1

    const-class v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    invoke-virtual {v0}, [Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    return-object v0
.end method
