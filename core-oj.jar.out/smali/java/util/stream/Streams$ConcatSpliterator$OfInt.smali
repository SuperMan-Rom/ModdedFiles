.class Ljava/util/stream/Streams$ConcatSpliterator$OfInt;
.super Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams$ConcatSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        "Ljava/util/Spliterator$OfInt;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfInt;Ljava/util/Spliterator$OfInt;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Streams$ConcatSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method
