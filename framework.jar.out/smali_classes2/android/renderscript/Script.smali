.class public Landroid/renderscript/Script;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Script$Builder;,
        Landroid/renderscript/Script$FieldBase;,
        Landroid/renderscript/Script$FieldID;,
        Landroid/renderscript/Script$InvokeID;,
        Landroid/renderscript/Script$KernelID;,
        Landroid/renderscript/Script$LaunchOptions;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mIIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$InvokeID;",
            ">;"
        }
    .end annotation
.end field

.field mInIdsBuffer:[J

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    iget-object v0, p0, Landroid/renderscript/Script;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/renderscript/Allocation;I)V
    .locals 8

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, p1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_2

    iget-object v7, p1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v7}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "API 20+ only allows simple 1D allocations to be used with bind."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v7}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    goto :goto_0
.end method

.method protected createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    .locals 7

    iget-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/Script$FieldID;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v4}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, p1}, Landroid/renderscript/RenderScript;->nScriptFieldIDCreate(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    new-instance v0, Landroid/renderscript/RSDriverException;

    const-string/jumbo v4, "Failed to create FieldID"

    invoke-direct {v0, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Landroid/renderscript/Script$FieldID;

    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Script$FieldID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    iget-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method protected createInvokeID(I)Landroid/renderscript/Script$InvokeID;
    .locals 7

    iget-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/Script$InvokeID;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v4}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, p1}, Landroid/renderscript/RenderScript;->nScriptInvokeIDCreate(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    new-instance v0, Landroid/renderscript/RSDriverException;

    const-string/jumbo v4, "Failed to create KernelID"

    invoke-direct {v0, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Landroid/renderscript/Script$InvokeID;

    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Script$InvokeID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    iget-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method protected createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    .locals 8

    iget-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/Script$KernelID;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v4}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, p1, p2}, Landroid/renderscript/RenderScript;->nScriptKernelIDCreate(JII)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    new-instance v0, Landroid/renderscript/RSDriverException;

    const-string/jumbo v4, "Failed to create KernelID"

    invoke-direct {v0, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Landroid/renderscript/Script$KernelID;

    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Script$KernelID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V

    iget-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p3}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "At least one of input allocation, output allocation, or LaunchOptions is required to be non-null."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v5, 0x0

    if-eqz p2, :cond_1

    iget-object v5, p0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    aput-wide v0, v5, v2

    :cond_1
    const-wide/16 v6, 0x0

    if-eqz p3, :cond_2

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    :cond_2
    const/4 v8, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v8

    :cond_3
    const/4 v9, 0x0

    if-eqz p5, :cond_4

    const/4 v0, 0x6

    new-array v9, v0, [I

    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get1(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v0

    aput v0, v9, v2

    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get0(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v0

    const/4 v1, 0x1

    aput v0, v9, v1

    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get3(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v0

    const/4 v1, 0x2

    aput v0, v9, v1

    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get2(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v0

    const/4 v1, 0x3

    aput v0, v9, v1

    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get5(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v0

    const/4 v1, 0x4

    aput v0, v9, v1

    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get4(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v0

    const/4 v1, 0x5

    aput v0, v9, v1

    :cond_4
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    return-void
.end method

.method protected forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method protected forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 11

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v0}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, p3}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "At least one of ain or aout is required to be non-null."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    new-array v5, v1, [J

    const/4 v10, 0x0

    :goto_1
    array-length v1, p2

    if-ge v10, v1, :cond_3

    aget-object v1, p2, v10

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    aput-wide v2, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :cond_3
    const-wide/16 v6, 0x0

    if-eqz p3, :cond_4

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    :cond_4
    const/4 v8, 0x0

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v8

    :cond_5
    const/4 v9, 0x0

    if-eqz p5, :cond_6

    const/4 v1, 0x6

    new-array v9, v1, [I

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get1(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v9, v2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get0(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v9, v2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get3(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v9, v2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get2(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v9, v2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get5(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v9, v2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get4(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v9, v2

    :cond_6
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    return-void
.end method

.method public getVarB(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getVarD(I)D
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarD(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVarF(I)F
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarF(JI)F

    move-result v0

    return v0
.end method

.method public getVarI(I)I
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result v0

    return v0
.end method

.method public getVarJ(I)J
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarJ(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVarV(ILandroid/renderscript/FieldPacker;)V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/renderscript/RenderScript;->nScriptGetVarV(JI[B)V

    return-void
.end method

.method protected invoke(I)V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    return-void
.end method

.method protected invoke(ILandroid/renderscript/FieldPacker;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/renderscript/RenderScript;->nScriptInvokeV(JI[B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    goto :goto_0
.end method

.method protected reduce(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 10

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "At least one input is required."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p3, :cond_2

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "aout is required to be non-null."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, p2, v1

    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v0}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    array-length v1, p2

    new-array v5, v1, [J

    const/4 v9, 0x0

    :goto_1
    array-length v1, p2

    if-ge v9, v1, :cond_4

    aget-object v1, p2, v9

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    aput-wide v2, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    const/4 v8, 0x0

    if-eqz p4, :cond_5

    const/4 v1, 0x6

    new-array v8, v1, [I

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-get1(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v8, v2

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-get0(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v8, v2

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-get3(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v8, v2

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-get2(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v8, v2

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-get5(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v8, v2

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-get4(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v8, v2

    :cond_5
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    move v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nScriptReduce(JI[JJ[I)V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    :try_start_0
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/renderscript/RenderScript;->nScriptSetTimeZone(J[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVar(ID)V
    .locals 6

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarD(JID)V

    return-void
.end method

.method public setVar(IF)V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarF(JIF)V

    return-void
.end method

.method public setVar(II)V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    return-void
.end method

.method public setVar(IJ)V
    .locals 6

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarJ(JIJ)V

    return-void
.end method

.method public setVar(ILandroid/renderscript/BaseObj;)V
    .locals 6

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    if-nez p2, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarObj(JIJ)V

    return-void

    :cond_0
    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    goto :goto_0
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;)V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/renderscript/RenderScript;->nScriptSetVarV(JI[B)V

    return-void
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    .locals 9

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    move v4, p1

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[I)V

    return-void
.end method

.method public setVar(IZ)V
    .locals 4

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
