Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDF519F6E9
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 Apr 2020 15:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+9moud3t50yFpHDAOypX1zBm26Qxa/s+CmgcSxL+10=; b=fg05oPkaxSaOVC
	KgbdInlnTov6ChmAUrYWR8+gHS20Dg6dQ2tvklc3wxRmxKCEqtAksSbZs5lJEbhQRcPMTRLpiVe2u
	IpuvFlFaV8XZEfb0rFqEJg6cprpYFxN7528vELXlO07twwbQNwJ88HCMgQZncRMM3kfwKevwjCVJT
	wkkmYbOdoCkh8vXr/pOOcuv9JS8YV4MnrXYNDFzlD1dcgfLP+/ge/bIC1Eg+0zw0/YGDHkJQjW1BP
	cbbuHbuIl75D+f0V/kHK/2CKSmtwmvD9vsbhF+TUvZhchedxUoWnS7s60ba+MDixRYe8uHyeMS8Nf
	1+4OOoduQJWOsBbzPjOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRld-0004Dt-A8; Mon, 06 Apr 2020 13:26:21 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRlZ-0004B6-Sr
 for linux-mediatek@lists.infradead.org; Mon, 06 Apr 2020 13:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586179542;
 bh=cZxryEa5tb+4ohfc5V2brSTnlGtEjAXGe6KYmDrG5hk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=FDqxf/03Me6n52488Y18Rabb5YSwMPn1mam4w4B6S2FebURiMOjtlneLssYKRhVZV
 iSU2GotSw9c5FzSAXDal/a4PO8MaL4SCiPIb+eHaWbjHqRuSJ33O0zYBXMHpZOxGAl
 xWbb/xhuYuR4UuaOcC6KNdWEzXaA+6JGSVrclXek=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.149.116] ([217.61.149.116]) by web-mail.gmx.net
 (3c-app-gmx-bap62.server.lan [172.19.172.132]) (via HTTP); Mon, 6 Apr 2020
 15:25:42 +0200
MIME-Version: 1.0
Message-ID: <trinity-fb0cdf15-dfcf-4d60-9144-87d8fbfad5ba-1586179542451@3c-app-gmx-bap62>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: sean.wang@mediatek.com
Subject: Aw: [PATCH v2 net 1/2] net: dsa: mt7530: move mt7623 settings out
 off the mt7530
Date: Mon, 6 Apr 2020 15:25:42 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1586122974-22125-1-git-send-email-sean.wang@mediatek.com>
References: <1586122974-22125-1-git-send-email-sean.wang@mediatek.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:O1vU5Y4cQTpCmCr8F/qiebVj81nxiFnE5QlNKEK3tTiupQQ3ghXSyk0ZApsFymcjQ8Rlf
 q3gIdeGy49auc3bph4SXTubVy51+lvbVajZaENnxiiY8AGOJyiDriMDc65Dxc1SGJxXySuhC5XQP
 7dZJruxEuXE8FNuPSWK7mQG6+8T74Sgv3bm0myeTblKgGfMo37EXtoCaVevDZ0leLdhR/1pvqa/+
 5Cy0ZI35eRixcMb2Wf/oSUvbkqsdv8kS5iQa451qd/x8IpPyMXJeL0cbKqNmWWLJyPfrBiVvGzx4
 SI=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pBy9zcz6aqI=:Y+q9/7RkJD0R8BQoabs8+k
 a0AtodGnx1+Sp3KQ0UES8c/6igKsZhu5lFK65lXFmsdIh3X0GZSZlWegMyGqnjhL/0ToWRS/4
 GYhN0gfTjU6h+5s12FFxOYwXf6VLs2yor9iT9yur1I8vtFClWoIaCyHG9UP7RqSr0OsxNHSmn
 LdMrwrv4Gyr5MfdBQCHKEou0Iz8RnAvmxSJJmVmB193gLABJGj+2Mj1hRumOjn5AZvtiibO9x
 N6QlD4QGWYnyJVW+v1Lebc82GVX0Pw88mDoHyuGQMFhurajKscffLM7rVVnLU2ZyvQHAGAylI
 RtZtNldAVDfH/Mp0pEsH/FcS7Yw9xmx+2LQIrl9lO839TIpHSxpuoiMbsXqBW6MTWag5uFXEJ
 08yCayHNEP2KWwsBpIOO7428ykDDzHPhX+R/+NUcEALWl4sculIltOspefQv4o2l2AFj/0HVr
 clH+GOPY9Qem2S7z0JItFBkIEdQ/k3rdJkjWVdbJviTwBwcZVzBrRbhC9VoN52dtjys/pcorJ
 1y29sm4VqxoRCFPZW8KfIN5ME6SGyE6CO7kYQk3Y00Pclq/F6lG4sHiUCtm2oo/iAwFIg2Jgj
 vxvIThhIyWGt7zWiaUX2D2WDlgHyE7HZm6kz+nOhszj33OysxFo2mFgrlE6fUkfkiIXN6ZmYO
 0mhKgc1gZJ4sLMNLVD3LnopNOy+aunQVJN/+KJg62hcm4D1SnKQpl+h+WtXMDmfhTvAM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_062618_264116_2DA19845 
X-CRM114-Status: UNSURE (   3.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, Landen.Chao@mediatek.com, f.fainelli@gmail.com,
 steven.liu@mediatek.com, vivien.didelot@savoirfairelinux.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, davem@davemloft.net,
 =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, john@phrozen.org, Mark-MC.Lee@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

have tested these 2 and additional rene's 3rd Patch on my tree [1] on BPi-R2, no problem with trgmii yet (multiple power-cycle+reboots). I had issues with current 5.6.0 version, so imho these should go also into 5.6.y

regards Frank

Tested-by: Frank Wunderlich <frank-w@public-files.de>

[1] https://github.com/frank-w/BPI-R2-4.14/commits/5.6-trgmii

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
