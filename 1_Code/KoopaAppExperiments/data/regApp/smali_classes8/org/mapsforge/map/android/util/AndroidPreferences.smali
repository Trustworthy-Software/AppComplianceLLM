.class public Lorg/mapsforge/map/android/util/AndroidPreferences;
.super Ljava/lang/Object;
.source "AndroidPreferences.java"

# interfaces
.implements Lorg/mapsforge/map/model/common/PreferencesFacade;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 27
    return-void
.end method

.method private createEditor()V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-direct {p0}, Lorg/mapsforge/map/android/util/AndroidPreferences;->createEditor()V

    .line 32
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 30
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 37
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getByte(Ljava/lang/String;B)B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .local v0, "intValue":I
    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    .line 46
    int-to-byte v1, v0

    monitor-exit p0

    return v1

    .line 44
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byte value out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .end local v0    # "intValue":I
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDouble(Ljava/lang/String;D)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 52
    .local v0, "longValue":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v2

    .line 50
    .end local v0    # "longValue":J
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 57
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 62
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 67
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 72
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-direct {p0}, Lorg/mapsforge/map/android/util/AndroidPreferences;->createEditor()V

    .line 78
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 76
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putByte(Ljava/lang/String;B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-direct {p0}, Lorg/mapsforge/map/android/util/AndroidPreferences;->createEditor()V

    .line 84
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putDouble(Ljava/lang/String;D)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-direct {p0}, Lorg/mapsforge/map/android/util/AndroidPreferences;->createEditor()V

    .line 90
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 88
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-direct {p0}, Lorg/mapsforge/map/android/util/AndroidPreferences;->createEditor()V

    .line 96
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 94
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-direct {p0}, Lorg/mapsforge/map/android/util/AndroidPreferences;->createEditor()V

    .line 102
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 100
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    monitor-enter p0

    .line 107
    :try_start_0
    invoke-direct {p0}, Lorg/mapsforge/map/android/util/AndroidPreferences;->createEditor()V

    .line 108
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 106
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-direct {p0}, Lorg/mapsforge/map/android/util/AndroidPreferences;->createEditor()V

    .line 114
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 112
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save()V
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/android/util/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local p0    # "this":Lorg/mapsforge/map/android/util/AndroidPreferences;
    :cond_0
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
