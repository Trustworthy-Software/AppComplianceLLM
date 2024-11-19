.class public Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;
.super Ljava/lang/Object;
.source "NumericIncrementTransformOperation.java"

# interfaces
.implements Lcom/google/firebase/firestore/model/mutation/TransformOperation;


# instance fields
.field private operand:Lcom/google/firestore/v1/Value;


# direct methods
.method public constructor <init>(Lcom/google/firestore/v1/Value;)V
    .locals 3
    .param p1, "operand"    # Lcom/google/firestore/v1/Value;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    nop

    .line 37
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->isNumber(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    const-string v2, "NumericIncrementTransformOperation expects a NumberValue operand"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    .line 40
    return-void
.end method

.method private operandAsDouble()D
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->isDouble(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    return-wide v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->isInteger(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'operand\' to be of Number type, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 108
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private operandAsLong()J
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->isDouble(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->isInteger(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    return-wide v0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'operand\' to be of Number type, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    .line 122
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 120
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private safeIncrement(JJ)J
    .locals 6
    .param p1, "x"    # J
    .param p3, "y"    # J

    .line 88
    add-long v0, p1, p3

    .line 91
    .local v0, "r":J
    xor-long v2, p1, v0

    xor-long v4, p3, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 92
    return-wide v0

    .line 95
    :cond_0
    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    .line 96
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2

    .line 98
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2
.end method


# virtual methods
.method public applyToLocalView(Lcom/google/firestore/v1/Value;Lcom/google/firebase/Timestamp;)Lcom/google/firestore/v1/Value;
    .locals 5
    .param p1, "previousValue"    # Lcom/google/firestore/v1/Value;
    .param p2, "localWriteTime"    # Lcom/google/firebase/Timestamp;

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->computeBaseValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    .line 47
    .local v0, "baseValue":Lcom/google/firestore/v1/Value;
    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->isInteger(Lcom/google/firestore/v1/Value;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->isInteger(Lcom/google/firestore/v1/Value;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operandAsLong()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->safeIncrement(JJ)J

    move-result-wide v1

    .line 49
    .local v1, "sum":J
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setIntegerValue(J)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    return-object v3

    .line 50
    .end local v1    # "sum":J
    :cond_0
    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->isInteger(Lcom/google/firestore/v1/Value;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-direct {p0}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operandAsDouble()D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 52
    .local v1, "sum":D
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setDoubleValue(D)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    return-object v3

    .line 54
    .end local v1    # "sum":D
    :cond_1
    nop

    .line 55
    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->isDouble(Lcom/google/firestore/v1/Value;)Z

    move-result v1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 54
    const-string v3, "Expected NumberValue to be of type DoubleValue, but was "

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v1

    invoke-direct {p0}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operandAsDouble()D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 59
    .restart local v1    # "sum":D
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setDoubleValue(D)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    return-object v3
.end method

.method public applyToRemoteDocument(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 0
    .param p1, "previousValue"    # Lcom/google/firestore/v1/Value;
    .param p2, "transformResult"    # Lcom/google/firestore/v1/Value;

    .line 65
    return-object p2
.end method

.method public computeBaseValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "previousValue"    # Lcom/google/firestore/v1/Value;

    .line 78
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->isNumber(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    move-object v0, p1

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setIntegerValue(J)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    .line 78
    :goto_0
    return-object v0
.end method

.method public getOperand()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firestore/v1/Value;

    return-object v0
.end method
