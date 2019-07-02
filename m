Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C525CCCF
	for <lists+linux-mediatek@lfdr.de>; Tue,  2 Jul 2019 11:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IgYYK766FDzWF8KNP2qCpkjr1/z85OZzJeFvf3mVHoM=; b=esLIq+UpbQx4XJ3sMvBoGH2Ig8
	xLlZOEgXCEsnEcqZ4MJoiUeGTQFNGuGZFZzqTfVad0J1PaHq1sEUm3uEmU5YOJ69ccGvHJi8Y1td9
	QGNegyiEOJ6ScBP6ICy9wi5Zyagy25Hd2QlSpS7EXHR6Gh/iDftBEpMguVZWBU+Be0ZKBmfQZfx5x
	L0IxACn1ieG558XVWul/Kn/OBuIvvPn5fV4o1mI8PjEW3vGXYvmrIg/yU6y31bcQgAr6DU+wfVIwk
	hFI3Ne0aomqL4E7kRoPDFkTm7aUaj+AEqQpvAZ4JIZ/mnZIF3OZbaw03q/wUXvpKGkq89J59AjkXl
	KtULG25Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiFIg-000128-U7; Tue, 02 Jul 2019 09:42:11 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFHd-00009t-Ha; Tue, 02 Jul 2019 09:41:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562060458;
 bh=f6kRXJnx0iuLcJu8Xdd4njzNEX/9pGEhKGohBWOOTnU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=BKziDrDKtqG4PEH5TiBq1a7WBSS4JlDEg6vQiLLnMIUnaZ9J0mQeMU6Rw7uhUxIs8
 +RKQaEYusoYye9S4Att7DUo6Zi2N9IZkhI2TTtsAmzcNszbKAvLV6+hIyo7oSBsjK/
 L5+ZkcmqyyCRtmcCSnXMTi3nsfzqzqGVYKUzh3WM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.147.59]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1M59C8-1hjLDB4900-001Ae7; Tue, 02 Jul 2019 11:40:58 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] add dts for poweroff
Date: Tue,  2 Jul 2019 11:40:44 +0200
Message-Id: <20190702094045.3652-3-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702094045.3652-1-frank-w@public-files.de>
References: <20190702094045.3652-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:WVevwR0Nk1xxgXKDn/OupV4Xtu2YX9P9Gipa9pWYtJFb5S1L5GP
 eTPpkrtcjoWfKZI8M/vF4fIgmhDM2w24Zw9wlsZG2v9Y8v3LjsoOMQYFcbvgCjhtZtHA7NA
 FnJYqeguCX52RPIWMyp+fbIvFdhn8zr8svro2mlzPPcetmUJLHAW/Z6s612a4q4e/6VgWcB
 i7+4xz9BCdG7KSuZTFoqA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TYy+FGe1yz8=:OPybtfWj9RkoIpOblvgqL7
 rF8ByWKvTBgGbudq2IcFeaOVIg2w4ykQ5XLBv/pzBIsFLvoklHAQ7QCNlAHN4jXtiB+DsL9Fj
 eSzYP0AoSLlzjP3z+3J3HPNe1tAfAq2HPIvcUEpIF4Am/7X5jK+fN3iCIZt4BzmzVFmPF8fPX
 42xgy+i70X17keXI6NtFc1tUmR5ib82RQWg1GNF/Juu0hFVkgHeiBGMKdTtCe65Af1rPqFOVw
 6OXz0CMS40fzqoIJKc9Lx4t/MHUaaPAexxUOj3z+3j+sryNI2FngQN4dvcncxY2Bdd5krS8jQ
 oGFfDmVV7oInaE8NvmPa3e6uZqqR4jaibfDErzEiahI54ChFmMuP+o0h5DbroH6XOLm1ymyiD
 nEapizIGIcSFhGUrWocjBzGrHVtpTCgbjXe1esw1AUhfM/DADVkJg7MVEpKTLyd8dh3XcO7VA
 Qq18xeiv2rgqEW++u0bcTuF94qngZmkgNLJjaaWSH3WxiEhFuLJFbdbuFXEGPCcWwwSWmATyK
 dcszWDE1cbdrf1fzortfrU1MryOmXt2A8OBk1occcvuwjNCH0AwwwnEjTrk9QyI8LOS1RUKiZ
 NOmvd4jSAD9tj/9MlflHj2TfNZ4v8byhgy8G3FiIdHbuZiJimK9q31xQzbx0ATEchRUf94oa+
 1lOWzu1lnS/hlhuhpnbQUuumQJ+nSD5/5yJD6gTUqFWjKKPjIRJZkCrxVkpPLuNEvtfI95Aii
 o5+Obw0Tx1Lsm6+PQtYc+4nP+xGrSk0ESv6nAli+dhOVcaXjvI4xOGCP+ujNbDECU6mpjPXui
 QU/L7qpCNfbuw96eN44o5+WuzIgpLL6JZNBv+9D+Iq8ySFB0uy8vebXxAGgY9Wfz04MnGKhzj
 /t+jXv9xk12B9ma0CmjIxdsw6cPpUqAeKqg94t+DVmqFkzS8sJfywn1bGmvazCSKgFkOjTbIX
 6dphHmcoa0lB6X1RBQaps5v/KVRcOyJxxoZKIG+lrmMip2d4zX0j5g1J60VILwU4PsW1gIJSa
 lJzmGaipRmvN3j547B/OtUF6IxrAv7Tnnziw+LAYXbWpYoeb9/AXvs4BlXoTHkzi8V+7yYlli
 3oz4zhKsW7FN9k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_024105_870225_BC45C226 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Josef Friedl <josef.friedl@speed.at>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

poweroff for BPI-R2
Suggested-by: Frank Wunderlich <frank-w@public-files.de>

Signed-off-by: Josef Friedl <josef.friedl@speed.at>
---
 arch/arm/boot/dts/mt6323.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/mt6323.dtsi b/arch/arm/boot/dts/mt6323.dtsi
index ba397407c1dd..7fda40ab5fe8 100644
--- a/arch/arm/boot/dts/mt6323.dtsi
+++ b/arch/arm/boot/dts/mt6323.dtsi
@@ -238,5 +238,32 @@
 				regulator-enable-ramp-delay = <216>;
 			};
 		};
+
+		mt6323keys: mt6323keys {
+			compatible = "mediatek,mt6323-keys";
+			mediatek,long-press-mode = <1>;
+			power-off-time-sec = <0>;
+
+			power {
+				linux,keycodes = <116>;
+				wakeup-source;
+			};
+
+			home {
+				linux,keycodes = <114>;
+			};
+		};
+
+		codec: mt6397codec {
+			compatible = "mediatek,mt6397-codec";
+		};
+
+		power-controller {
+			compatible = "mediatek,mt6323-pwrc";
+		};
+
+		rtc {
+			compatible = "mediatek,mt6323-rtc";
+		};
 	};
 };
--
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
