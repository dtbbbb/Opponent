getgenv().Opponent = {
         ['Start'] = {
            Key = "OPPONENT_KEY_HERE",
		          Intro = true,
						['UnlockFps'] = {
							Enabled = true,
							FpsCap = 999,
							},
								['Panic'] = {
									Enabled = false,
									Key = "K",
									},
										['Universal'] = {
											Use_HitChance = true,
											FFA = false,
											},
												['Silent'] = {
													Enabled = true,
													Mode = "FOV",
													Enable_KeyBind = true,
													KeyBind = "p",
													Alert = true,
													Predict = true,
													Prediction = 0.12567724521,
													HitChance = 100,
													AirShot_HitChance = 100,
													HitParts = 'HumanoidRootPart',
													NearestCursorHitpart = true,
													HitPart_Mode = 'Nearest Point', -- 'Nearest Part', 'Nearest Point'
													},
														['Fov'] = {
															           ['Silent'] = {
																         Visible = false,
																         Filled = false,
																		 Size = 50,
																		 Transparency = 0,
																		 Thickness = 1,
																		 Sides = 25?
																		 Color = Color3.fromRGB(255, 255,255),
																},
																	    ['Checks'] = {
																			Wall = true,
																			Knocked = true,
																			Grabbed = true,
																			Crew_Check = false,
																			NoGroundShots = true,
															},
																	      ['Resolver'] = {
																				Enabled = true,
																				Neg = 80,
																				Pos = -40,
																				Anti_Aim_Viewer = true, -- v1
																				AntiAimViewer = false, -- v2
																		},
																			['Settings'] = {
																				AutoLowGFX = false,
																				MuteBoomBox = false,
																				AutoReload = false,
																				AutoPrediction = false,
																		},
																			['Methods'] = {
																				NoDelay = true, -- paid no delay method that sum random was selling
																				RoPro = false, -- finds ur region best ping
																				ADBypass = true, -- bypasses adonis admin
																				DHBypass = true, -- bypasses dh
																		},
																				['Animations'] = {
																					Lay = true, LayKey = Enum.KeyCode.T,
																			        Greet = true, GreetKey = Enum.KeyCode.G,
																			        Speed = false, SpeedKey = Enum.KeyCode.N,
																			        Sturdy = false, SturdyKey = Enum.KeyCode.H,
																			        Griddy = false, GriddyKey = Enum.KeyCode.G,
																	},
																		['GunFov'] = {
																			Enabled = true,
																			Fov = true,
																			Prediction = true,
																			HitChance = true,
																			Range = false,
																			Close = 15,
																			Mid = 30,
																			Far = math.huge,
																			['DoubleBarrel'] = {
																				['Close_Fov'] = 15, ['Close_Prediction'] = 0.135, ['Close_HitChance'] = 100,
																				['Mid_Fov'] = 7, ['Mid_Prediction'] = 0.135, ['Mid_HitChance'] = 100,
																				['Far_Fov'] = 4, ['Far_Prediction'] = 0.135, ['Far_HitChance'] = 100,
																			},
																			['Revolver'] = {
																				['Close_Fov'] = 15, ['Close_Prediction'] = 0.135, ['Close_HitChance'] = 100,
																				['Mid_Fov'] = 7, ['Mid_Prediction'] = 0.135, ['Mid_HitChance'] = 100,
																				['Far_Fov'] = 4, ['Far_Prediction'] = 0.135, ['Far_HitChance'] = 100,
																			},
																			['TacticalShotgun'] = {
																				['Close_Fov'] = 15, ['Close_Prediction'] = 0.135, ['Close_HitChance'] = 100,
																				['Mid_Fov'] = 7, ['Mid_Prediction'] = 0.135, ['Mid_HitChance'] = 100,
																				['Far_Fov'] = 4, ['Far_Prediction'] = 0.135, ['Far_HitChance'] = 100,
																			},
																		},
																		
																		loadstring(game:HttpGet("https://raw.githubusercontent.com/doxbinlol/Opponent/main/Loader.lua"))()
																		
