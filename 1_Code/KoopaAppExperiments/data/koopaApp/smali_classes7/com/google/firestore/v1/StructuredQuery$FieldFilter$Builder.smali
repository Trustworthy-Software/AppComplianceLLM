.class public final Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$FieldFilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$FieldFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredQuery$FieldFilter;",
        "Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$FieldFilterOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2830
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3000()Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2831
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/StructuredQuery$1;

    .line 2823
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearField()Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1

    .line 2900
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 2901
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3300(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V

    .line 2902
    return-object p0
.end method

.method public clearOp()Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1

    .line 2966
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 2967
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3600(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V

    .line 2968
    return-object p0
.end method

.method public clearValue()Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1

    .line 3037
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3038
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3900(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V

    .line 3039
    return-object p0
.end method

.method public getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 1

    .line 2854
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    return-object v0
.end method

.method public getOp()Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;
    .locals 1

    .line 2941
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getOp()Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    move-result-object v0

    return-object v0
.end method

.method public getOpValue()I
    .locals 1

    .line 2915
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getOpValue()I

    move-result v0

    return v0
.end method

.method public getValue()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 2991
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public hasField()Z
    .locals 1

    .line 2843
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->hasField()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .line 2980
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->hasValue()Z

    move-result v0

    return v0
.end method

.method public mergeField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 2889
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 2890
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3200(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 2891
    return-object p0
.end method

.method public mergeValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 3026
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3027
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3800(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/Value;)V

    .line 3028
    return-object p0
.end method

.method public setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    .line 2877
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 2878
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3100(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 2879
    return-object p0
.end method

.method public setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 2864
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 2865
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3100(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 2866
    return-object p0
.end method

.method public setOp(Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2953
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 2954
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3500(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;)V

    .line 2955
    return-object p0
.end method

.method public setOpValue(I)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 2927
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 2928
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3400(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;I)V

    .line 2929
    return-object p0
.end method

.method public setValue(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 3014
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3015
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3700(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/Value;)V

    .line 3016
    return-object p0
.end method

.method public setValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 3001
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3002
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3700(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/Value;)V

    .line 3003
    return-object p0
.end method
