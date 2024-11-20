.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 915
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->access$1200()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 916
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 908
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValidateQueryIndexes()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
    .locals 1

    .line 997
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->copyOnWrite()V

    .line 998
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->access$1600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V

    .line 999
    return-object p0
.end method

.method public clearValidateQueryResultOrder()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
    .locals 1

    .line 954
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->copyOnWrite()V

    .line 955
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->access$1400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V

    .line 956
    return-object p0
.end method

.method public getValidateQueryIndexes()Z
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->getValidateQueryIndexes()Z

    move-result v0

    return v0
.end method

.method public getValidateQueryResultOrder()Z
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->getValidateQueryResultOrder()Z

    move-result v0

    return v0
.end method

.method public setValidateQueryIndexes(Z)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 983
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->copyOnWrite()V

    .line 984
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->access$1500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;Z)V

    .line 985
    return-object p0
.end method

.method public setValidateQueryResultOrder(Z)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 941
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->copyOnWrite()V

    .line 942
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->access$1300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;Z)V

    .line 943
    return-object p0
.end method
