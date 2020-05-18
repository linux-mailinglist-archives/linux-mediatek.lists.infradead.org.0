Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAE61D7730
	for <lists+linux-mediatek@lfdr.de>; Mon, 18 May 2020 13:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Br4FCzCKdM/d9JJ/APkSbPzPddHeK4D3hCXDWwskigg=; b=uGAkAipsaOsIw2
	1KqEe8/mYmUQnq7TKVYIz25RK4HjORk8V0LwE4yLYCwJUsUmY1a0jE8+WwThVPUsi+vUah7Tx/rV/
	CmGHnymjnu21kfEo2hz2oll7+o9UJAJ9g68zRVlKxea0b0hyz9Q9OIKV8050LSXvneHyQSBgZyW1D
	9VlC79POYKvGS57MMrav892DYdNSVpmZOyYCg99pV1BrukCFsCuktYZAHNcGm4O2wpcYiIRg2JCm+
	g8t6CsMLrx8TG6SCXECri7MzHEqGBqN8AoaBMvFH0u6AzgJLd2jaCXg6CBFoXJx0Kgvdjcz6j/+lv
	wvuidaYykNh8ktzIP43A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jae19-0002Pb-3P; Mon, 18 May 2020 11:33:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jae0M-0001ZM-PV; Mon, 18 May 2020 11:32:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=xNJSGZc5yQkYpMK+12GbOBUj7N1B3/vTPSWdQ5AEu78=; b=p99ZErp5Ml2y39xmBAWWVMWYGB
 LBoIBO2L4rnb80fVceagCOq4nIvQVgvu1BrJBkydJ/He7l/tFoE35tnlHtCVfRLSdYchoLFupEi4f
 cjT2MkKk/T0HSFw1+e5VkvrUhg4Jt1i97mjspcSmQrS2hU25Oqzw7Q3niGG5Y+FAXhL0njuuVfGwb
 3Adi9+NMn4EuMhKNyBc8cF7Yf0apYAfJLciuHHBUgqLvjUCeEAMeqxWnrxcYqbyknlhmUShkCGy0Q
 hWAQ9r40UMu2u5UBxSRk6tgaRv8Oh1yWhYDwg7talGgE2CL2ebyRJXj7YeXxCvo+6jIdEaZ5e9+9H
 LlA6JUvA==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jae0I-0003sc-HG; Mon, 18 May 2020 11:32:21 +0000
Received: from ziggy.de (unknown [213.195.113.243])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 003E220842;
 Mon, 18 May 2020 11:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589801533;
 bh=hRLEeBysdZ6kFgUDeK0lA09a2o6jYmHQePruxEGS3qk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eDbdd/TVoB29vYhR7SyvYdqoXqfsSo2Dhjv1/4o2cftfqpn5Xaa3rgIATVBpxnbOm
 2wWJehgaWj6C7SD9IMWELUnHRGQLjb0eA7KD3DxJR5IAeRhGY37WNwjGdPZcqxTJrf
 jB4XfDFEeYVyy06Uiyw6gx9eNly0gV+QEs0P36Ys=
From: matthias.bgg@kernel.org
To: Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 4/4] arm64: dts: mt6797: Fix mmsys node name
Date: Mon, 18 May 2020 13:31:56 +0200
Message-Id: <20200518113156.25009-4-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200518113156.25009-1-matthias.bgg@kernel.org>
References: <20200518113156.25009-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_123218_966587_75D83FE3 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -7.1 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 mtk01761 <wendell.lin@mediatek.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Matthias Brugger <matthias.bgg@gmail.com>

Node names are supposed to match the class of the device. The
mmsys node is a syscon as it provides more then just a clock controller.
Update the name.

Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>

---

 arch/arm64/boot/dts/mediatek/mt6797.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6797.dtsi b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
index 136ef9527a0d..3efd032481ce 100644
--- a/arch/arm64/boot/dts/mediatek/mt6797.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
@@ -233,7 +233,7 @@ uart3: serial@11005000 {
 		status = "disabled";
 	};
 
-	mmsys: mmsys_config@14000000 {
+	mmsys: syscon@14000000 {
 		compatible = "mediatek,mt6797-mmsys", "syscon";
 		reg = <0 0x14000000 0 0x1000>;
 		#clock-cells = <1>;
-- 
2.26.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
