.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreActionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9809
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->access$18600()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9810
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 9802
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAction()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 1

    .line 9819
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->copyOnWrite()V

    .line 9820
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->access$18700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V

    .line 9821
    return-object p0
.end method

.method public clearActionId()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 1

    .line 9896
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->copyOnWrite()V

    .line 9897
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->access$19200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V

    .line 9898
    return-object p0
.end method

.method public clearFirestoreV1Action()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 1

    .line 9868
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->copyOnWrite()V

    .line 9869
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->access$19000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V

    .line 9870
    return-object p0
.end method

.method public clearValidationRule()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 1

    .line 9979
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->copyOnWrite()V

    .line 9980
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->access$19500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V

    .line 9981
    return-object p0
.end method

.method public getActionCase()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;
    .locals 1

    .line 9815
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->getActionCase()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    move-result-object v0

    return-object v0
.end method

.method public getActionId()I
    .locals 1

    .line 9879
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->getActionId()I

    move-result v0

    return v0
.end method

.method public getFirestoreV1Action()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1

    .line 9837
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->getFirestoreV1Action()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    move-result-object v0

    return-object v0
.end method

.method public getValidationRule()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1

    .line 9925
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->getValidationRule()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    move-result-object v0

    return-object v0
.end method

.method public hasFirestoreV1Action()Z
    .locals 1

    .line 9830
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->hasFirestoreV1Action()Z

    move-result v0

    return v0
.end method

.method public hasValidationRule()Z
    .locals 1

    .line 9912
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->hasValidationRule()Z

    move-result v0

    return v0
.end method

.method public mergeFirestoreV1Action(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 9860
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->copyOnWrite()V

    .line 9861
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->access$18900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V

    .line 9862
    return-object p0
.end method

.method public mergeValidationRule(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    .line 9966
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->copyOnWrite()V

    .line 9967
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->access$19400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V

    .line 9968
    return-object p0
.end method

.method public setActionId(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 9887
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->copyOnWrite()V

    .line 9888
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->access$19100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;I)V

    .line 9889
    return-object p0
.end method

.method public setFirestoreV1Action(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;

    .line 9852
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->copyOnWrite()V

    .line 9853
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-virtual {p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->access$18800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V

    .line 9854
    return-object p0
.end method

.method public setFirestoreV1Action(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 9843
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->copyOnWrite()V

    .line 9844
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->access$18800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V

    .line 9845
    return-object p0
.end method

.method public setValidationRule(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;

    .line 9952
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->copyOnWrite()V

    .line 9953
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-virtual {p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->access$19300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V

    .line 9954
    return-object p0
.end method

.method public setValidationRule(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    .line 9937
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->copyOnWrite()V

    .line 9938
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;->access$19300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V

    .line 9939
    return-object p0
.end method
