.class public final Lcom/google/firestore/v1/Target$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Target.java"

# interfaces
.implements Lcom/google/firestore/v1/TargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Target;",
        "Lcom/google/firestore/v1/Target$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TargetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1836
    invoke-static {}, Lcom/google/firestore/v1/Target;->access$1600()Lcom/google/firestore/v1/Target;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1837
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Target$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Target$1;

    .line 1829
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDocuments()Lcom/google/firestore/v1/Target$Builder;
    .locals 1

    .line 2003
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2004
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0}, Lcom/google/firestore/v1/Target;->access$2400(Lcom/google/firestore/v1/Target;)V

    .line 2005
    return-object p0
.end method

.method public clearExpectedCount()Lcom/google/firestore/v1/Target$Builder;
    .locals 1

    .line 2327
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2328
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0}, Lcom/google/firestore/v1/Target;->access$3600(Lcom/google/firestore/v1/Target;)V

    .line 2329
    return-object p0
.end method

.method public clearOnce()Lcom/google/firestore/v1/Target$Builder;
    .locals 1

    .line 2232
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2233
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0}, Lcom/google/firestore/v1/Target;->access$3300(Lcom/google/firestore/v1/Target;)V

    .line 2234
    return-object p0
.end method

.method public clearQuery()Lcom/google/firestore/v1/Target$Builder;
    .locals 1

    .line 1931
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 1932
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0}, Lcom/google/firestore/v1/Target;->access$2100(Lcom/google/firestore/v1/Target;)V

    .line 1933
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/Target$Builder;
    .locals 1

    .line 2137
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2138
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0}, Lcom/google/firestore/v1/Target;->access$2900(Lcom/google/firestore/v1/Target;)V

    .line 2139
    return-object p0
.end method

.method public clearResumeToken()Lcom/google/firestore/v1/Target$Builder;
    .locals 1

    .line 2059
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2060
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0}, Lcom/google/firestore/v1/Target;->access$2600(Lcom/google/firestore/v1/Target;)V

    .line 2061
    return-object p0
.end method

.method public clearResumeType()Lcom/google/firestore/v1/Target$Builder;
    .locals 1

    .line 1858
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 1859
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0}, Lcom/google/firestore/v1/Target;->access$1800(Lcom/google/firestore/v1/Target;)V

    .line 1860
    return-object p0
.end method

.method public clearTargetId()Lcom/google/firestore/v1/Target$Builder;
    .locals 1

    .line 2192
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2193
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0}, Lcom/google/firestore/v1/Target;->access$3100(Lcom/google/firestore/v1/Target;)V

    .line 2194
    return-object p0
.end method

.method public clearTargetType()Lcom/google/firestore/v1/Target$Builder;
    .locals 1

    .line 1846
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 1847
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0}, Lcom/google/firestore/v1/Target;->access$1700(Lcom/google/firestore/v1/Target;)V

    .line 1848
    return-object p0
.end method

.method public getDocuments()Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1

    .line 1956
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->getDocuments()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedCount()Lcom/google/protobuf/Int32Value;
    .locals 1

    .line 2265
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->getExpectedCount()Lcom/google/protobuf/Int32Value;

    move-result-object v0

    return-object v0
.end method

.method public getOnce()Z
    .locals 1

    .line 2207
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->getOnce()Z

    move-result v0

    return v0
.end method

.method public getQuery()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1

    .line 1884
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->getQuery()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 2086
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2032
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResumeTypeCase()Lcom/google/firestore/v1/Target$ResumeTypeCase;
    .locals 1

    .line 1854
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->getResumeTypeCase()Lcom/google/firestore/v1/Target$ResumeTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    .line 2157
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->getTargetId()I

    move-result v0

    return v0
.end method

.method public getTargetTypeCase()Lcom/google/firestore/v1/Target$TargetTypeCase;
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->getTargetTypeCase()Lcom/google/firestore/v1/Target$TargetTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasDocuments()Z
    .locals 1

    .line 1945
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->hasDocuments()Z

    move-result v0

    return v0
.end method

.method public hasExpectedCount()Z
    .locals 1

    .line 2250
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->hasExpectedCount()Z

    move-result v0

    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .line 1873
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->hasQuery()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 2074
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public hasResumeToken()Z
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->hasResumeToken()Z

    move-result v0

    return v0
.end method

.method public mergeDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 1991
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 1992
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target;->access$2300(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    .line 1993
    return-object p0
.end method

.method public mergeExpectedCount(Lcom/google/protobuf/Int32Value;)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Int32Value;

    .line 2312
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2313
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target;->access$3500(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Int32Value;)V

    .line 2314
    return-object p0
.end method

.method public mergeQuery(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 1919
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 1920
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target;->access$2000(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V

    .line 1921
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 2124
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2125
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target;->access$2800(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Timestamp;)V

    .line 2126
    return-object p0
.end method

.method public setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;)Lcom/google/firestore/v1/Target$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    .line 1979
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 1980
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Target;->access$2200(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    .line 1981
    return-object p0
.end method

.method public setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 1966
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 1967
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target;->access$2200(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    .line 1968
    return-object p0
.end method

.method public setExpectedCount(Lcom/google/protobuf/Int32Value$Builder;)Lcom/google/firestore/v1/Target$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Int32Value$Builder;

    .line 2296
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2297
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {p1}, Lcom/google/protobuf/Int32Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Int32Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Target;->access$3400(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Int32Value;)V

    .line 2298
    return-object p0
.end method

.method public setExpectedCount(Lcom/google/protobuf/Int32Value;)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Int32Value;

    .line 2279
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2280
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target;->access$3400(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Int32Value;)V

    .line 2281
    return-object p0
.end method

.method public setOnce(Z)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 2219
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2220
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target;->access$3200(Lcom/google/firestore/v1/Target;Z)V

    .line 2221
    return-object p0
.end method

.method public setQuery(Lcom/google/firestore/v1/Target$QueryTarget$Builder;)Lcom/google/firestore/v1/Target$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    .line 1907
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 1908
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Target;->access$1900(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V

    .line 1909
    return-object p0
.end method

.method public setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 1894
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 1895
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target;->access$1900(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V

    .line 1896
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/Target$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 2111
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2112
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Target;->access$2700(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Timestamp;)V

    .line 2113
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 2097
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2098
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target;->access$2700(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Timestamp;)V

    .line 2099
    return-object p0
.end method

.method public setResumeToken(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2045
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2046
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target;->access$2500(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/ByteString;)V

    .line 2047
    return-object p0
.end method

.method public setTargetId(I)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 2174
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$Builder;->copyOnWrite()V

    .line 2175
    iget-object v0, p0, Lcom/google/firestore/v1/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target;->access$3000(Lcom/google/firestore/v1/Target;I)V

    .line 2176
    return-object p0
.end method
