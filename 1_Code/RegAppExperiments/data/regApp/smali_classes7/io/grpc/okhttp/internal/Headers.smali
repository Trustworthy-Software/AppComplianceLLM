.class public final Lio/grpc/okhttp/internal/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/internal/Headers$Builder;
    }
.end annotation


# instance fields
.field private final namesAndValues:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/grpc/okhttp/internal/Headers$Builder;)V
    .locals 2
    .param p1, "builder"    # Lio/grpc/okhttp/internal/Headers$Builder;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lio/grpc/okhttp/internal/Headers$Builder;->access$000(Lio/grpc/okhttp/internal/Headers$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lio/grpc/okhttp/internal/Headers$Builder;->access$000(Lio/grpc/okhttp/internal/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/okhttp/internal/Headers;->namesAndValues:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/okhttp/internal/Headers$Builder;Lio/grpc/okhttp/internal/Headers$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/okhttp/internal/Headers$Builder;
    .param p2, "x1"    # Lio/grpc/okhttp/internal/Headers$1;

    .line 36
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/Headers;-><init>(Lio/grpc/okhttp/internal/Headers$Builder;)V

    return-void
.end method

.method private static get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "namesAndValues"    # [Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 86
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 87
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    return-object v1

    .line 86
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lio/grpc/okhttp/internal/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0, p1}, Lio/grpc/okhttp/internal/Headers;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public name(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 55
    mul-int/lit8 v0, p1, 0x2

    .line 56
    .local v0, "nameIndex":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lio/grpc/okhttp/internal/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    aget-object v1, v1, v0

    return-object v1

    .line 57
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public newBuilder()Lio/grpc/okhttp/internal/Headers$Builder;
    .locals 3

    .line 72
    new-instance v0, Lio/grpc/okhttp/internal/Headers$Builder;

    invoke-direct {v0}, Lio/grpc/okhttp/internal/Headers$Builder;-><init>()V

    .line 73
    .local v0, "result":Lio/grpc/okhttp/internal/Headers$Builder;
    invoke-static {v0}, Lio/grpc/okhttp/internal/Headers$Builder;->access$000(Lio/grpc/okhttp/internal/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/internal/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 74
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 50
    iget-object v0, p0, Lio/grpc/okhttp/internal/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 80
    invoke-virtual {p0, v1}, Lio/grpc/okhttp/internal/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lio/grpc/okhttp/internal/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public value(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 64
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 65
    .local v0, "valueIndex":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lio/grpc/okhttp/internal/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    aget-object v1, v1, v0

    return-object v1

    .line 66
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method
