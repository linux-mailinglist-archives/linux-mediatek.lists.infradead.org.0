Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3D4D1E9F
	for <lists+linux-mediatek@lfdr.de>; Thu, 10 Oct 2019 04:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8rUjMOpG3ZRDQIZtFt1X9xQs0JeErPu1H7kVl5DOR8=; b=GjOHniFRwCn8Rn
	EW/qkv73nes4lCh3+1V3bIq+aj7bFoJV59mV4T9ym0ULTbMYW0Xv6Kima/1P1UGPNcaF8ejdWglC0
	Pw388fAT50KX9ggFg/3xCsS0FYM3Kz1+X4i2F+iUBBPiEKRmfDYwz1vK64A5r3uScjUULHipKNrGi
	499MAZ3QuOXwHMoFHI1bEeGptJ27a2EN9F9/EWtoVNqpCMvAVrYmTWTE/2U/V3zi5e9J3Y6jbajXh
	z5xH+G+2WD2wDE7vb2lLpEpJlibYJBwR+Mm3NjR3jZA8zpikXx634ruwkWlwJExuX6Q4UOX8vYo9+
	CIAkORqByqHfMfzmc1AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIOQM-0003PB-TD; Thu, 10 Oct 2019 02:43:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIOQI-0003NO-R8
 for linux-mediatek@lists.infradead.org; Thu, 10 Oct 2019 02:43:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id h195so2898751pfe.5
 for <linux-mediatek@lists.infradead.org>; Wed, 09 Oct 2019 19:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=QWteHAhBVt9oVGOsOtKHsCiYKtX8kIzt6852sk1FamE=;
 b=iei9S1oj45k0ZQgMqH7H0heioINFqEVoK5QQNnLJC6ig340LF/7lvfzuHdeKQlFK9x
 6Hkzh1+TJ0ShL8YMEXjqTIzqQykuK+7tNtk94vJ4PDCbixkpd/CwsT+tJo73VoTzALs/
 3YWHZQoNIZeLzmRb9W51aeEcULryqpcGxo8kCATCoMkcLHktP/FKv3Ju9PHc7WdcrGqO
 qhS24uqCCsyYuoV3mYvlcqYnea4e3PZbAMiwtrKuLXasFUvy0aiVsLwKeg0yUmpUQano
 OxYzAZwBbkwSmqpihYxzEX7I6XbxUNWZtxCAn7mGV3WyXxBTngz3tgAri5pGzUmpS68u
 GvEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=QWteHAhBVt9oVGOsOtKHsCiYKtX8kIzt6852sk1FamE=;
 b=ZMRQawyFsZT+5esFSDtf379UhVqZitmw3E9gnxrbnmU+e+Acts3XOfA2kbQSoC5EIH
 kX1SGGQCpCP8q+wtA80pvvsc5QsmasOC6Ru4w2xG8/iK/tMP3P9X1FBDcb7hbd/qJtEN
 MM1mgbMxzYjABEgdsg98ezK+0+He6UIOtxtDmO1o0xYpFnk+IksDRk2Mv+AeaxMVATLp
 FJkVSp6ZjeQtNDMqHJ4hgtT5sJILeNkaiQqt3/xCuONEOV829XaZNUyFXywSfpng5j/O
 /6f6/YiEyjkMzsNdZwd+I4xtm4XjWDJ6d1vxSIMLmiI0YvY2jHbiyIyB1QLS6X/vJJbg
 dnRw==
X-Gm-Message-State: APjAAAW9OLIX/Z3RT2NRp70CQk+ZzOSUHSkBUQ6VAKlS0JLJNArzZteN
 amw7zwBLE1BPhpZgK44IPlvWvQ==
X-Google-Smtp-Source: APXvYqwanEd1qtiJMg/JVqFKEiqK+wQJaWOvm1tyP8JvAOqtrzd2OgCokg0CQcOtJoVJeVXoP6I4vw==
X-Received: by 2002:aa7:9e8d:: with SMTP id p13mr7146028pfq.171.1570675405027; 
 Wed, 09 Oct 2019 19:43:25 -0700 (PDT)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id a16sm4961578pfa.53.2019.10.09.19.43.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 19:43:24 -0700 (PDT)
Date: Wed, 9 Oct 2019 19:43:11 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Biao Huang <biao.huang@mediatek.com>
Subject: Re: [RESEND,PATCH] net: stmmac: dwmac-mediatek: fix wrong delay
 value issue when resume back
Message-ID: <20191009194311.55c8cf6e@cakuba.netronome.com>
In-Reply-To: <20191009073348.5503-1-biao.huang@mediatek.com>
References: <20191009073348.5503-1-biao.huang@mediatek.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_194326_880809_727B5BB5 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: andrew@lunn.ch, jianguo.zhang@mediatek.com,
 Alexandre Torgue <alexandre.torgue@st.com>, boon.leong.ong@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Jose Abreu <joabreu@synopsys.com>,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 9 Oct 2019 15:33:48 +0800, Biao Huang wrote:
> mac_delay value will be divided by 550/170 in mt2712_delay_ps2stage(),
> which is invoked at the beginning of mt2712_set_delay(), and the value
> should be restored at the end of mt2712_set_delay().
> Or, mac_delay will be divided again when invoking mt2712_set_delay()
> when resume back.
> So, add mt2712_delay_stage2ps() to mt2712_set_delay() to recovery the
> original mac_delay value.
> 
> Signed-off-by: Biao Huang <biao.huang@mediatek.com>

Applied, thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
