Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF271BAC3
	for <lists+linux-mediatek@lfdr.de>; Mon, 13 May 2019 18:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRUI0N3GZS/om6ho0yaNSs7Yhiju7pMscUbXBiNN/OQ=; b=Tdyr5DvhRJ9xoE
	46u+ZdMfItMdOZlvc4OjYG0kqJcfGB8lUv+JsNMFt8tq/+CHRcl1dacSzqg9kard8EQl/clykZkUy
	yypTKD7ElgeDrHglZ3RwHee2I9npHe8lbVZepLhb8Y+6e9cMIrMU7fs10Yvw06lLsgf6+2hcHpZeJ
	kCnMo7q+ycGWp88k5Lm64b1fMqWx23gb0ffUKyudX5pLRG9MdlWNwtF14LyZetvhv+IiV/aRFhIp6
	jYRCnZMVkuftm8+asc99DI3bDEtjC+m2/NZPOYsD+4lbTgK5LYEeYWvTfhGsOLA+G3WYxNSzIeeYO
	dRzfxO/cjYUPqT8jfjYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDYK-0007F0-S6; Mon, 13 May 2019 16:11:48 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDX8-0005lp-3Y
 for linux-mediatek@lists.infradead.org; Mon, 13 May 2019 16:11:12 +0000
Received: by mail-wm1-x342.google.com with SMTP id j187so14306513wmj.1
 for <linux-mediatek@lists.infradead.org>; Mon, 13 May 2019 09:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9T1/4HKSA0NkK81OThOJXB5oP2sP9+83bG60ubpcyoY=;
 b=A16m6zAywCB7IenvcKGu6S9Iw+7EoquUkBG+/LlWGZ1uw0hbH24gnIB+OIjjodrDrl
 7p+xPvhKlK5rBUBsdKH/a10XroxKJoOtq+eXky7B3O/ndCh8pQDyF3Uko3zDkhaqjTfe
 J2jwPYQuJxQl+7rlLGTTp7EYvt7tgxeOITa0iQySaad3uNTcmj89WASace/bJLdaL13f
 UopTXIP4vQm/CG6791O8bLjL34Yrm5PuW18w/tqwbPiCEsLrz1tjmMmslj82uyxEb+bX
 bic7PIQPX32IaoIdVGJLbjDaH4KuLkGsnehClGfJFIvfyZtQ0VtwCJ0uXXvqHPgOFf2E
 EJcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9T1/4HKSA0NkK81OThOJXB5oP2sP9+83bG60ubpcyoY=;
 b=HXKdaCuJNZPGhLtPdL39iL6xoAWqDMHx7BfL8WIeMgNkmETkv29Z/C8GcefsvBr+rQ
 huzdj4GJhbmH7xn57lZm0duxizO0FkttHxyrIaPTmCx7WVqtSxgXOAza72MGVQE5a0jo
 xVuFN/Qoivroze28MFHKaUbUcsvvKPVaXxrJbqunU2LHgnxPCkqWgxKwr6U78HlclPyQ
 SBsFU8dl+/FD/ORQTSG947kb42Dy1lW0f+hJK3z8553c9tMRuhCq6rbI8ouuLEEkTgl3
 Wx7+oYSxBUaa4nqvtX1UalXDccdVhINgdmi4ABn/qjdPwJhU0/oe0P7xHbhmUx1AIMrr
 ua6Q==
X-Gm-Message-State: APjAAAXEVmok3DJQcMxfhYhmhDfeL29ZwR6n8dARffsYjWydqQDoUA7F
 316TXwwGuEphc37IYUZJGwJAew==
X-Google-Smtp-Source: APXvYqzD4m4skBS4zytA5HcFFPn4vkoFT7Rsx4j3YUgpNu7ZRX0A/g82yDxyu4EUYgk0+mqvPBK5dw==
X-Received: by 2002:a1c:be19:: with SMTP id o25mr7372825wmf.138.1557763832168; 
 Mon, 13 May 2019 09:10:32 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-11-31.w90-86.abo.wanadoo.fr. [90.86.214.31])
 by smtp.gmail.com with ESMTPSA id n2sm24439089wra.89.2019.05.13.09.10.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 09:10:31 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	mark.rutland@arm.com,
	matthias.bgg@gmail.com
Subject: [PATCH v2 1/5] dt-bindings: regulator: add support for MT6392
Date: Mon, 13 May 2019 18:10:22 +0200
Message-Id: <20190513161026.31308-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190513161026.31308-1-fparent@baylibre.com>
References: <20190513161026.31308-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_091034_362478_0ADA43EF 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Fabien Parent <fparent@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add binding documentation of the regulator for MT6392 SoCs.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

v2:
	* Use 'pmic' as node name for the pmic.
	* Use 'regulators' as node name for the regulators
	* use dash instead of underscore for regulator's node names.

---
 .../bindings/regulator/mt6392-regulator.txt   | 220 ++++++++++++++++++
 1 file changed, 220 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/mt6392-regulator.txt

diff --git a/Documentation/devicetree/bindings/regulator/mt6392-regulator.txt b/Documentation/devicetree/bindings/regulator/mt6392-regulator.txt
new file mode 100644
index 000000000000..d03c0707fabc
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/mt6392-regulator.txt
@@ -0,0 +1,220 @@
+Mediatek MT6392 Regulator
+
+Required properties:
+- compatible: "mediatek,mt6392-regulator"
+- mt6392regulator: List of regulators provided by this controller. It is named
+  according to its regulator type, buck_<name> and ldo_<name>.
+  The definition for each of these nodes is defined using the standard binding
+  for regulators at Documentation/devicetree/bindings/regulator/regulator.txt.
+
+The valid names for regulators are::
+BUCK:
+  buck_vproc, buck_vsys, buck_vcore
+LDO:
+  ldo_vxo22, ldo_vaud22, ldo_vcama, ldo_vaud28, ldo_vadc18, ldo_vcn35,
+  ldo_vio28. ldo_vusb, ldo_vmc, ldo_vmch, ldo_vemc3v3, ldo_vgp1, ldo_vgp2,
+  ldo_vcn18, ldo_vcamaf, ldo_vm, ldo_vio18, ldo_vcamd, ldo_vcamio, ldo_vm25,
+  ldo_vefuse
+
+Example:
+	pmic {
+		compatible = "mediatek,mt6392", "mediatek,mt6323";
+		mediatek,system-power-controller;
+
+		regulator {
+			compatible = "mediatek,mt6392-regulator";
+
+			mt6392_vproc_reg: buck-vproc {
+				regulator-name = "buck_vproc";
+				regulator-min-microvolt = < 700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vsys_reg: buck-vsys {
+				regulator-name = "buck_vsys";
+				regulator-min-microvolt = <1400000>;
+				regulator-max-microvolt = <2987500>;
+				regulator-ramp-delay = <25000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vcore_reg: buck-vcore {
+				regulator-name = "buck_vcore";
+				regulator-min-microvolt = < 700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vxo22_reg: ldo-vxo22 {
+				regulator-name = "ldo_vxo22";
+				regulator-min-microvolt = <2200000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-enable-ramp-delay = <110>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vaud22_reg: ldo-vaud22 {
+				regulator-name = "ldo_vaud22";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vcama_reg: ldo-vcama {
+				regulator-name = "ldo_vcama";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vaud28_reg: ldo-vaud28 {
+				regulator-name = "ldo_vaud28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vadc18_reg: ldo-vadc18 {
+				regulator-name = "ldo_vadc18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vcn35_reg: ldo-vcn35 {
+				regulator-name = "ldo_vcn35";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vio28_reg: ldo-vio28 {
+				regulator-name = "ldo_vio28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vusb_reg: ldo-vusb {
+				regulator-name = "ldo_vusb";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vmc_reg: ldo-vmc {
+				regulator-name = "ldo_vmc";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-boot-on;
+			};
+
+			mt6392_vmch_reg: ldo-vmch {
+				regulator-name = "ldo_vmch";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-boot-on;
+			};
+
+			mt6392_vemc3v3_reg: ldo-vemc3v3 {
+				regulator-name = "ldo_vemc3v3";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-boot-on;
+			};
+
+			mt6392_vgp1_reg: ldo-vgp1 {
+				regulator-name = "ldo_vgp1";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vgp2_reg: ldo-vgp2 {
+				regulator-name = "ldo_vgp2";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vcn18_reg: ldo-vcn18 {
+				regulator-name = "ldo_vcn18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vcamaf_reg: ldo-vcamaf {
+				regulator-name = "ldo_vcamaf";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vm_reg: ldo-vm {
+				regulator-name = "ldo_vm";
+				regulator-min-microvolt = <1240000>;
+				regulator-max-microvolt = <1390000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vio18_reg: ldo-vio18 {
+				regulator-name = "ldo_vio18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vcamd_reg: ldo-vcamd {
+				regulator-name = "ldo_vcamd";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vcamio_reg: ldo-vcamio {
+				regulator-name = "ldo_vcamio";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vm25_reg: ldo-vm25 {
+				regulator-name = "ldo_vm25";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vefuse_reg: ldo-vefuse {
+				regulator-name = "ldo_vefuse";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <2000000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+		};
+	};
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
