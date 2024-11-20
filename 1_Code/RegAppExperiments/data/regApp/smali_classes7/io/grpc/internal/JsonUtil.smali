.class public Lio/grpc/internal/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DURATION_SECONDS_MAX:J = 0x4979cb9e00L

.field private static final DURATION_SECONDS_MIN:J = -0x4979cb9e00L

.field private static final NANOS_PER_SECOND:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    nop

    .line 332
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/JsonUtil;->NANOS_PER_SECOND:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkObjectList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .line 245
    .local p0, "rawList":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 246
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 249
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4, p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 248
    const-string v4, "value %s for idx %d in %s is not object"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public static checkStringList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    .local p0, "rawList":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 262
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 266
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4, p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 264
    const-string v4, "value \'%s\' for idx %d in \'%s\' is not string"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method private static durationIsValid(JI)Z
    .locals 6
    .param p0, "seconds"    # J
    .param p2, "nanos"    # I

    .line 373
    const-wide v0, -0x4979cb9e00L

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_6

    const-wide v2, 0x4979cb9e00L

    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    goto :goto_2

    .line 376
    :cond_0
    int-to-long v2, p2

    const-wide/32 v4, -0x3b9ac9ff

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    int-to-long v2, p2

    sget-wide v4, Lio/grpc/internal/JsonUtil;->NANOS_PER_SECOND:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    goto :goto_1

    .line 379
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-ltz v0, :cond_2

    if-gez p2, :cond_3

    .line 380
    :cond_2
    cmp-long v0, p0, v2

    if-gtz v0, :cond_4

    if-lez p2, :cond_3

    goto :goto_0

    .line 384
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 381
    :cond_4
    :goto_0
    return v1

    .line 377
    :cond_5
    :goto_1
    return v1

    .line 374
    :cond_6
    :goto_2
    return v1
.end method

.method public static getBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 227
    .local p0, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p1, :cond_2

    .line 228
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 236
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    return-object v1

    .line 233
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    filled-new-array {v0, p1, p0}, [Ljava/lang/Object;

    move-result-object v2

    .line 234
    const-string v3, "value \'%s\' for key \'%s\' in \'%s\' is not Boolean"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    .end local v0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 39
    .local p0, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p1, :cond_2

    .line 40
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    filled-new-array {v0, p1, p0}, [Ljava/lang/Object;

    move-result-object v2

    .line 46
    const-string v3, "value \'%s\' for key \'%s\' in \'%s\' is not List"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    .end local v0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getListOfObjects(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 58
    .local p0, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lio/grpc/internal/JsonUtil;->getList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v0, :cond_0

    .line 60
    const/4 v1, 0x0

    return-object v1

    .line 62
    :cond_0
    invoke-static {v0}, Lio/grpc/internal/JsonUtil;->checkObjectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getListOfStrings(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 72
    .local p0, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lio/grpc/internal/JsonUtil;->getList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v0, :cond_0

    .line 74
    const/4 v1, 0x0

    return-object v1

    .line 76
    :cond_0
    invoke-static {v0}, Lio/grpc/internal/JsonUtil;->checkStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getNumberAsDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Double;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 104
    .local p0, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p1, :cond_3

    .line 105
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 110
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    return-object v1

    .line 112
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 114
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 117
    const-string v4, "value \'%s\' for key \'%s\' is not a double"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    filled-new-array {v0, p1, p0}, [Ljava/lang/Object;

    move-result-object v2

    .line 121
    const-string v3, "value \'%s\' for key \'%s\' in \'%s\' is not a number"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    .end local v0    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 130
    .local p0, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p1, :cond_4

    .line 131
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 136
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    .line 137
    .local v1, "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 138
    .local v2, "i":I
    int-to-double v3, v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 139
    :cond_1
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number expected to be integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    .end local v1    # "d":Ljava/lang/Double;
    .end local v2    # "i":I
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    const-string v2, "value \'%s\' for key \'%s\' is not an integer"

    if-eqz v1, :cond_3

    .line 145
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v4

    .line 148
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 152
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    .end local v0    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getNumberAsLong(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 161
    .local p0, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p1, :cond_4

    .line 162
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 167
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    .line 168
    .local v1, "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    .line 169
    .local v2, "l":J
    long-to-double v4, v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 172
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 170
    :cond_1
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number expected to be long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 174
    .end local v1    # "d":Ljava/lang/Double;
    .end local v2    # "l":J
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    const-string v2, "value \'%s\' for key \'%s\' is not a long integer"

    if-eqz v1, :cond_3

    .line 176
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v4

    .line 179
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 183
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    .end local v0    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 86
    .local p0, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p1, :cond_2

    .line 87
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 95
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    return-object v1

    .line 92
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    filled-new-array {v0, p1, p0}, [Ljava/lang/Object;

    move-result-object v2

    .line 93
    const-string v3, "value \'%s\' for key \'%s\' in \'%s\' is not object"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    .end local v0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 192
    .local p0, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p1, :cond_2

    .line 193
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 197
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 201
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 198
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    filled-new-array {v0, p1, p0}, [Ljava/lang/Object;

    move-result-object v2

    .line 199
    const-string v3, "value \'%s\' for key \'%s\' in \'%s\' is not String"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    .end local v0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getStringAsDuration(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 210
    .local p0, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lio/grpc/internal/JsonUtil;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 212
    const/4 v1, 0x0

    return-object v1

    .line 215
    :cond_0
    :try_start_0
    invoke-static {v0}, Lio/grpc/internal/JsonUtil;->parseDuration(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static normalizedDuration(JI)J
    .locals 9
    .param p0, "seconds"    # J
    .param p2, "nanos"    # I

    .line 339
    int-to-long v0, p2

    sget-wide v2, Lio/grpc/internal/JsonUtil;->NANOS_PER_SECOND:J

    neg-long v4, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    int-to-long v0, p2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 340
    :cond_0
    int-to-long v0, p2

    div-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide p0

    .line 341
    int-to-long v0, p2

    rem-long/2addr v0, v2

    long-to-int p2, v0

    .line 343
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v4, p0, v0

    const-wide/16 v5, 0x1

    if-lez v4, :cond_2

    if-gez p2, :cond_2

    .line 344
    int-to-long v7, p2

    add-long/2addr v7, v2

    long-to-int p2, v7

    .line 345
    sub-long/2addr p0, v5

    .line 347
    :cond_2
    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    if-lez p2, :cond_3

    .line 348
    int-to-long v0, p2

    sub-long/2addr v0, v2

    long-to-int p2, v0

    .line 349
    add-long/2addr p0, v5

    .line 351
    :cond_3
    invoke-static {p0, p1, p2}, Lio/grpc/internal/JsonUtil;->durationIsValid(JI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lio/grpc/internal/JsonUtil;->saturatedAdd(JJ)J

    move-result-wide v0

    return-wide v0

    .line 352
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 356
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 352
    const-string v2, "Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseDuration(Ljava/lang/String;)J
    .locals 11
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Invalid duration string: "

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x73

    if-ne v0, v4, :cond_5

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "negative":Z
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 290
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 292
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "secondValue":Ljava/lang/String;
    const-string v4, ""

    .line 294
    .local v4, "nanoValue":Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 295
    .local v5, "pointPosition":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 296
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 299
    :cond_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 300
    .local v6, "seconds":J
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v2

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lio/grpc/internal/JsonUtil;->parseNanos(Ljava/lang/String;)I

    move-result v8

    .line 301
    .local v8, "nanos":I
    :goto_0
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-ltz v9, :cond_4

    .line 304
    if-eqz v0, :cond_3

    .line 305
    neg-long v6, v6

    .line 306
    neg-int v8, v8

    .line 309
    :cond_3
    :try_start_0
    invoke-static {v6, v7, v8}, Lio/grpc/internal/JsonUtil;->normalizedDuration(JI)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v9, Ljava/text/ParseException;

    const-string v10, "Duration value is out of range."

    invoke-direct {v9, v10, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 302
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 285
    .end local v0    # "negative":Z
    .end local v3    # "secondValue":Ljava/lang/String;
    .end local v4    # "nanoValue":Ljava/lang/String;
    .end local v5    # "pointPosition":I
    .end local v6    # "seconds":J
    .end local v8    # "nanos":I
    :cond_5
    new-instance v0, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static parseNanos(Ljava/lang/String;)I
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_2

    .line 321
    mul-int/lit8 v0, v0, 0xa

    .line 322
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 323
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x39

    if-gt v2, v4, :cond_0

    .line 326
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_1

    .line 324
    :cond_0
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Invalid nanoseconds."

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 320
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private static saturatedAdd(JJ)J
    .locals 9
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 396
    add-long v0, p0, p2

    .line 397
    .local v0, "naiveSum":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-gez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    xor-long v7, p0, v0

    cmp-long v4, v7, v4

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 400
    return-wide v0

    .line 403
    :cond_2
    const/16 v2, 0x3f

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    xor-long/2addr v2, v4

    const-wide v4, 0x7fffffffffffffffL

    add-long/2addr v2, v4

    return-wide v2
.end method
