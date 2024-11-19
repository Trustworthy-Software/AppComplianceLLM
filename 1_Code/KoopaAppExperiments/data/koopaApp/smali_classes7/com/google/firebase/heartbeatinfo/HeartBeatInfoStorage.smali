.class Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
.super Ljava/lang/Object;
.source "HeartBeatInfoStorage.java"


# static fields
.field private static final GLOBAL:Ljava/lang/String; = "fire-global"

.field private static final HEARTBEAT_PREFERENCES_NAME:Ljava/lang/String; = "FirebaseHeartBeat"

.field private static final HEART_BEAT_COUNT_LIMIT:I = 0x1e

.field private static final HEART_BEAT_COUNT_TAG:Ljava/lang/String; = "fire-count"

.field private static final LAST_STORED_DATE:Ljava/lang/String; = "last-used-date"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "FirebaseAppHeartBeat"

.field private static instance:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;


# instance fields
.field private final firebaseSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->instance:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "persistenceKey"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirebaseHeartBeat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "firebaseSharedPreferences"    # Landroid/content/SharedPreferences;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    .line 68
    return-void
.end method

.method private declared-synchronized cleanUpStoredHeartBeats()V
    .locals 10

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fire-count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 214
    .local v0, "heartBeatCount":J
    const/4 v2, 0x0

    .line 215
    .local v2, "lowestDate":Ljava/lang/String;
    const-string v3, ""

    .line 216
    .local v3, "userAgentString":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 217
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/Set;

    if-eqz v6, :cond_2

    .line 218
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 219
    .local v6, "dateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 220
    .local v8, "date":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_1

    .line 221
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_0
    move-object v2, v8

    .line 222
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v3, v9

    .line 224
    .end local v8    # "date":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 226
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v6    # "dateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 227
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 229
    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 230
    .local v4, "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 231
    iget-object v5, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    .line 232
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 233
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "fire-count"

    const-wide/16 v7, 0x1

    sub-long v7, v0, v7

    .line 234
    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 235
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 212
    .end local v0    # "heartBeatCount":J
    .end local v2    # "lowestDate":Ljava/lang/String;
    .end local v3    # "userAgentString":Ljava/lang/String;
    .end local v4    # "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFormattedDate(J)Ljava/lang/String;
    .locals 3
    .param p1, "millis"    # J

    monitor-enter p0

    .line 168
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 169
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v0

    .line 170
    .local v0, "instant":Ljava/time/Instant;
    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 171
    .local v1, "ldt":Ljava/time/LocalDateTime;
    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 173
    .end local v0    # "instant":Ljava/time/Instant;
    .end local v1    # "ldt":Ljava/time/LocalDateTime;
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 167
    .end local p1    # "millis":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getStoredUserAgentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "dateString"    # Ljava/lang/String;

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 125
    .local v2, "dateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 126
    .local v4, "date":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 129
    .end local v4    # "date":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_0
    goto :goto_1

    .line 131
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "dateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 132
    :cond_2
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 121
    .end local p1    # "dateString":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeStoredDate(Ljava/lang/String;)V
    .locals 4
    .param p1, "dateString"    # Ljava/lang/String;

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getStoredUserAgentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .local v0, "userAgentString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 148
    monitor-exit p0

    return-void

    .line 150
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 152
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 153
    .local v1, "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 157
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    .end local v0    # "userAgentString":Ljava/lang/String;
    .end local v1    # "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "dateString":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateStoredUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "dateString"    # Ljava/lang/String;

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->removeStoredDate(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 139
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 140
    .local v0, "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 135
    .end local v0    # "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .end local p1    # "userAgent":Ljava/lang/String;
    .end local p2    # "dateString":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized deleteAllHeartBeats()V
    .locals 8

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 79
    .local v1, "counter":I
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 80
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Set;

    if-eqz v4, :cond_1

    .line 82
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 83
    .local v4, "dates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getFormattedDate(J)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "today":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 85
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 86
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 87
    .local v7, "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 90
    nop

    .end local v7    # "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 91
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_0
    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v4    # "dates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "today":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 95
    :cond_2
    if-nez v1, :cond_3

    .line 96
    const-string v2, "fire-count"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 98
    :cond_3
    const-string v2, "fire-count"

    int-to-long v3, v1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 76
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "counter":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getAllHeartBeats()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatResult;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 105
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "heartBeatResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/heartbeatinfo/HeartBeatResult;>;"
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 107
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 108
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 109
    .local v3, "dates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getFormattedDate(J)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "today":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    nop

    .line 113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5, v6}, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;->create(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/heartbeatinfo/HeartBeatResult;

    move-result-object v5

    .line 112
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "dates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "today":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->updateGlobalHeartBeat(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-object v0

    .line 104
    .end local v0    # "heartBeatResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/heartbeatinfo/HeartBeatResult;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getHeartBeatCount()I
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fire-count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method declared-synchronized getLastGlobalHeartBeat()J
    .locals 4

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fire-global"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 239
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isSameDateUtc(JJ)Z
    .locals 2
    .param p1, "base"    # J
    .param p3, "target"    # J

    monitor-enter p0

    .line 247
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getFormattedDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p4}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getFormattedDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 247
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .end local p1    # "base":J
    .end local p3    # "target":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized postHeartBeatCleanUp()V
    .locals 3

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getFormattedDate(J)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "dateString":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last-used-date"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    invoke-direct {p0, v0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->removeStoredDate(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 161
    .end local v0    # "dateString":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized shouldSendGlobalHeartBeat(J)Z
    .locals 1
    .param p1, "millis"    # J

    monitor-enter p0

    .line 273
    :try_start_0
    const-string v0, "fire-global"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->shouldSendSdkHeartBeat(Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 273
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .end local p1    # "millis":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized shouldSendSdkHeartBeat(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "heartBeatTag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, -0x1

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->isSameDateUtc(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return v1

    .line 261
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 263
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    monitor-exit p0

    return v1

    .line 255
    .end local p1    # "heartBeatTag":Ljava/lang/String;
    .end local p2    # "millis":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized storeHeartBeat(JLjava/lang/String;)V
    .locals 12
    .param p1, "millis"    # J
    .param p3, "userAgentString"    # Ljava/lang/String;

    monitor-enter p0

    .line 178
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getFormattedDate(J)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "dateString":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "last-used-date"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "lastDateString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    invoke-direct {p0, v0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getStoredUserAgentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .local v2, "storedUserAgentString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 184
    monitor-exit p0

    return-void

    .line 186
    :cond_0
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 188
    monitor-exit p0

    return-void

    .line 190
    :cond_1
    :try_start_2
    invoke-direct {p0, p3, v0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->updateStoredUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 194
    .end local v2    # "storedUserAgentString":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "fire-count"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 195
    .local v2, "heartBeatCount":J
    const-wide/16 v6, 0x1

    add-long v8, v2, v6

    const-wide/16 v10, 0x1e

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 196
    invoke-direct {p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->cleanUpStoredHeartBeats()V

    .line 197
    iget-object v8, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "fire-count"

    invoke-interface {v8, v9, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v2, v4

    .line 199
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 201
    invoke-interface {v5, p3, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 202
    .local v4, "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    add-long/2addr v2, v6

    .line 204
    iget-object v5, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    .line 205
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 206
    invoke-interface {v5, p3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "fire-count"

    .line 207
    invoke-interface {v5, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "last-used-date"

    .line 208
    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 209
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 177
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "lastDateString":Ljava/lang/String;
    .end local v2    # "heartBeatCount":J
    .end local v4    # "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "millis":J
    .end local p3    # "userAgentString":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateGlobalHeartBeat(J)V
    .locals 2
    .param p1, "millis"    # J

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fire-global"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 242
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .end local p1    # "millis":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
