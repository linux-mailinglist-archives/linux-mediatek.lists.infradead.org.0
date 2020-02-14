Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA5A15DFB5
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Feb 2020 17:10:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mx1hMzxK/Ap45pJApMa6sHkKahh7//umn7dDhaw0oQ=; b=Rj7Ra1G67h7+tN
	uxZnhmiMI2Z6g4STyxTKvb76Oyp/yk6hw7HT7zOJ8ixBG/H/S+h062bPAcdvd1mplnUU3o79ssmRB
	DN+OAqJVMCpYzb+YenCA6LsawxgzFgoXlosSjbY8YtG7dF5Fa6ceLrQaUp1188FT3HmGBdpNB9QnI
	d4orn2qrfTrRf8dQ+je5RX06i0jelb1RkZXh2bQOtxq4BikMbH7vvyPTy4Dggm6pfhjCNqAxmTYmA
	xJ2CQXj4xm5L+4PnZF9F/6WbK9AxoN3QexOsyUB2AD48FjXoviHc2Thef0DcxOOdTwhkFfArHmqpE
	a1dIVHmo8Z3ZWV6X6MAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dXs-0002bv-O6; Fri, 14 Feb 2020 16:10:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dKT-0001nO-Dj; Fri, 14 Feb 2020 15:56:38 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3147B24654;
 Fri, 14 Feb 2020 15:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695792;
 bh=3wGW2BrunnOgr3U/ABE1pDq4qPc9Y4WepmDP45PXgNs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MNc/SvIhgdJ2jd1P2vPZh7PXLAPS+QejE4UNR8kaNkyGSPXqSTaHIuV06sgzEon9i
 8cnYtf+ylw//A/vwcDSeeEa4kdj3oHiXHJjSDw9Y4P/wMD+tL8T1Hul0KqRSYH4a91
 4q2FF1AsrU5IpnBpqiKPQMcpTOp5w8wgdMN2NYCg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 354/542] MIPS: ralink: dts:
 gardena_smart_gateway_mt7688: Limit UART1
Date: Fri, 14 Feb 2020 10:45:46 -0500
Message-Id: <20200214154854.6746-354-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075633_606970_47D1F225 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>,
 Reto Schneider <reto.schneider@husqvarnagroup.com>,
 linux-mediatek@lists.infradead.org, Stefan Roese <sr@denx.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Reto Schneider <reto.schneider@husqvarnagroup.com>

[ Upstream commit e8c192011c920517e5578d51c7aff0ecadd25de3 ]

The radio module asserts CTS when its RX buffer has 10 bytes left.
Putting just 8 instead of 16 bytes into the UART1 TX buffer on the Linux
side ensures to not overflow the RX buffer on the radio module side.

Signed-off-by: Reto Schneider <reto.schneider@husqvarnagroup.com>
Signed-off-by: Stefan Roese <sr@denx.de>
Cc: Paul Burton <paul.burton@mips.com>
Signed-off-by: Paul Burton <paulburton@kernel.org>
Cc: linux-mips@vger.kernel.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts b/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts
index aa5caaa311047..aad9a8a8669b4 100644
--- a/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts
+++ b/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts
@@ -177,6 +177,9 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinmux_i2s_gpio>;		/* GPIO0..3 */
 
+	fifo-size = <8>;
+	tx-threshold = <8>;
+
 	rts-gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
 	cts-gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
 };
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
