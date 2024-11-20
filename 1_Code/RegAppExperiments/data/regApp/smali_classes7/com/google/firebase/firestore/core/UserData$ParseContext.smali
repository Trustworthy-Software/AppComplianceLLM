.class public Lcom/google/firebase/firestore/core/UserData$ParseContext;
.super Ljava/lang/Object;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseContext"
.end annotation


# static fields
.field private static final RESERVED_FIELD_DESIGNATOR:Ljava/lang/String; = "__"


# instance fields
.field private final accumulator:Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

.field private final arrayElement:Z

.field private final path:Lcom/google/firebase/firestore/model/FieldPath;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;Lcom/google/firebase/firestore/model/FieldPath;Z)V
    .locals 0
    .param p1, "accumulator"    # Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;
    .param p2, "path"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p3, "arrayElement"    # Z

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->accumulator:Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    .line 222
    iput-object p2, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->path:Lcom/google/firebase/firestore/model/FieldPath;

    .line 223
    iput-boolean p3, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->arrayElement:Z

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;Lcom/google/firebase/firestore/model/FieldPath;ZLcom/google/firebase/firestore/core/UserData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;
    .param p2, "x1"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/google/firebase/firestore/core/UserData$1;

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/core/UserData$ParseContext;-><init>(Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;Lcom/google/firebase/firestore/model/FieldPath;Z)V

    return-void
.end method

.method private validatePath()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->path:Lcom/google/firebase/firestore/model/FieldPath;

    if-nez v0, :cond_0

    .line 302
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->path:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldPath;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->path:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/model/FieldPath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->validatePathSegment(Ljava/lang/String;)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private validatePathSegment(Ljava/lang/String;)V
    .locals 2
    .param p1, "segment"    # Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->isWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    const-string v0, "__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    const-string v0, "Document fields cannot begin and end with \"__\""

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    const-string v0, "Document fields must not be empty"

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public addToFieldMask(Lcom/google/firebase/firestore/model/FieldPath;)V
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/model/FieldPath;

    .line 282
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->accumulator:Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->addToFieldMask(Lcom/google/firebase/firestore/model/FieldPath;)V

    .line 283
    return-void
.end method

.method public addToFieldTransforms(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p2, "transformOperation"    # Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    .line 287
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->accumulator:Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->addToFieldTransforms(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V

    .line 288
    return-void
.end method

.method public childContext(I)Lcom/google/firebase/firestore/core/UserData$ParseContext;
    .locals 4
    .param p1, "arrayIndex"    # I

    .line 277
    new-instance v0, Lcom/google/firebase/firestore/core/UserData$ParseContext;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->accumulator:Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/core/UserData$ParseContext;-><init>(Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;Lcom/google/firebase/firestore/model/FieldPath;Z)V

    return-object v0
.end method

.method public childContext(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/UserData$ParseContext;
    .locals 4
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/model/FieldPath;

    .line 268
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->path:Lcom/google/firebase/firestore/model/FieldPath;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/FieldPath;->append(Lcom/google/firebase/firestore/model/BasePath;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/FieldPath;

    .line 269
    .local v0, "childPath":Lcom/google/firebase/firestore/model/FieldPath;
    :goto_0
    new-instance v1, Lcom/google/firebase/firestore/core/UserData$ParseContext;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->accumulator:Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/firebase/firestore/core/UserData$ParseContext;-><init>(Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;Lcom/google/firebase/firestore/model/FieldPath;Z)V

    .line 270
    .local v1, "context":Lcom/google/firebase/firestore/core/UserData$ParseContext;
    invoke-direct {v1}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->validatePath()V

    .line 271
    return-object v1
.end method

.method public childContext(Ljava/lang/String;)Lcom/google/firebase/firestore/core/UserData$ParseContext;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->path:Lcom/google/firebase/firestore/model/FieldPath;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/FieldPath;->append(Ljava/lang/String;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/FieldPath;

    .line 262
    .local v0, "childPath":Lcom/google/firebase/firestore/model/FieldPath;
    :goto_0
    new-instance v1, Lcom/google/firebase/firestore/core/UserData$ParseContext;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->accumulator:Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/firebase/firestore/core/UserData$ParseContext;-><init>(Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;Lcom/google/firebase/firestore/model/FieldPath;Z)V

    .line 263
    .local v1, "context":Lcom/google/firebase/firestore/core/UserData$ParseContext;
    invoke-direct {v1, p1}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->validatePathSegment(Ljava/lang/String;)V

    .line 264
    return-object v1
.end method

.method public createError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->path:Lcom/google/firebase/firestore/model/FieldPath;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldPath;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (found in field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->path:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 294
    :cond_1
    :goto_0
    const-string v0, ""

    .line 295
    :goto_1
    nop

    .line 296
    .local v0, "fieldDescription":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getDataSource()Lcom/google/firebase/firestore/core/UserData$Source;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->accumulator:Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    invoke-static {v0}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->access$100(Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;)Lcom/google/firebase/firestore/core/UserData$Source;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lcom/google/firebase/firestore/model/FieldPath;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->path:Lcom/google/firebase/firestore/model/FieldPath;

    return-object v0
.end method

.method public isArrayElement()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->arrayElement:Z

    return v0
.end method

.method public isWrite()Z
    .locals 2

    .line 246
    sget-object v0, Lcom/google/firebase/firestore/core/UserData$1;->$SwitchMap$com$google$firebase$firestore$core$UserData$Source:[I

    iget-object v1, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->accumulator:Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    invoke-static {v1}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->access$100(Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;)Lcom/google/firebase/firestore/core/UserData$Source;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/UserData$Source;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 255
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseContext;->accumulator:Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    .line 256
    invoke-static {v0}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->access$100(Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;)Lcom/google/firebase/firestore/core/UserData$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/UserData$Source;->name()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 255
    const-string v1, "Unexpected case for UserDataSource: %s"

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 253
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 250
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
