Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DE34E81E
	for <lists+linux-mediatek@lfdr.de>; Fri, 21 Jun 2019 14:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJ6icVgoDmDYIDy/XlqeyT4JTEMixxTWb4xOMPPRQwY=; b=hQ8/s1LeC3i5Qz
	dPZj1BKLv73nPzYjl/HEo3H0stGMdmIG7Piai/qPhbNfaR5uACipH9udcj4k+mocs2JFr97JS0FHR
	dcmXyRmScEgXYAdeeoyM+a4hC6XDjxM8oKEAyJg7r8Xaad1bxXEkCT7B90iysQhL5Klz1KMj1LAfI
	fuXdpbyMbWBsAJjPbM2rarFmiVOB+YTikz1PpyFCFYyYbZgVVL+hfiO63T4Hw6bBqlpWIT4PQpsq2
	m1qPqYtnjacIPVIlsiv8sdSCO3jLAqyZ34DOJbVx5pofhxx0d7FODVhH+MPlrVwRVnkpuNw9bP4uo
	UugkqKOEcAV2ykj84NfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heIoc-0005pB-Tw; Fri, 21 Jun 2019 12:38:50 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heIoX-0005of-Ue; Fri, 21 Jun 2019 12:38:48 +0000
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com
 [209.85.222.52]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x5LCc9sQ022319;
 Fri, 21 Jun 2019 21:38:10 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x5LCc9sQ022319
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561120690;
 bh=xYHBtM9ei9jjQEu9eZmhKcGQ4iFLFilN296X4GraDac=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=c1waatwp9qAahYXDlOaYjyEXFp0cRDX1f72Q8G6Axrcg+roWg/nfuztku/Z21bvnn
 jWtXGbTSCXbjfeA0cqiiyT5XVljxqVKotW7YUuHTtL01GGjU368M5Bkcub1yWmkwWT
 zz3vMljRwmsd9JI8xKMSZFBm3D2BQUskKFiVEqJla8d1ye2J46eNgUepCvB/BBfcIb
 b3NSeMvd1fnHJlZNdx08aqa2N78y54htE21QddcUZbY/lLA/eH6TpjZEDaIfP1K4PY
 IETVBVqgKq29oE9UyYgo6ccBR0V4T/suXV7mixpirWq7nLFTbTR4OKqrkDQQX9MywB
 fJ9RQgj3Kqm2Q==
X-Nifty-SrcIP: [209.85.222.52]
Received: by mail-ua1-f52.google.com with SMTP id o19so2881144uap.13;
 Fri, 21 Jun 2019 05:38:10 -0700 (PDT)
X-Gm-Message-State: APjAAAX0v3UvfZQ30kjm8kyFwrO2Jt1ld+rM8KZRbAzOJxUjfwV/9HyK
 7NqgKY8PZ1lg2gi9GO7nvfTp4F9Jpy1ONrilBg8=
X-Google-Smtp-Source: APXvYqy3Qb8nH5WUZMo3t4Hv65kCZmrRckhoPNILrCUG8EMqBrbhh4GwCb0HBISsoRjEeMRixlgdjLEwRi0g+y/uNsU=
X-Received: by 2002:a9f:25e9:: with SMTP id 96mr59742720uaf.95.1561120688968; 
 Fri, 21 Jun 2019 05:38:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190620015812.16519-1-xiaolei.li@mediatek.com>
In-Reply-To: <20190620015812.16519-1-xiaolei.li@mediatek.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 21 Jun 2019 21:37:32 +0900
X-Gmail-Original-Message-ID: <CAK7LNASu5FdAcSY49EGGdKU46KYBvWKzA8BeZNk9nTKmsKHy0A@mail.gmail.com>
Message-ID: <CAK7LNASu5FdAcSY49EGGdKU46KYBvWKzA8BeZNk9nTKmsKHy0A@mail.gmail.com>
Subject: Re: [PATCH] mtd: rawnand: mtk: Re-license MTK NAND driver as Dual
 MIT/GPL
To: Xiaolei Li <xiaolei.li@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_053846_319795_A9578C53 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
 srv_heupstream@mediatek.com, Richard Weinberger <richard@nod.at>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Wen Yang <yellowriver2010@hotmail.com>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Jorge Ramirez Ortiz <jorge.ramirez-ortiz@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgMTA6NTggQU0gPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29t
PiB3cm90ZToKPgo+IEZyb206IFhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPgo+
Cj4gSXQgaXMgd2FudGVkIHRvIHVzZSBNVEsgTkFORCBkcml2ZXIgd2l0aCBHUEwtMi4wIG9yIE1J
VCBsaWNlbnNlLgo+IEJ1dCBub3cgaXQgaXMgb25seSBsaWNlbnNlZCBhcyBHUEwtMi4wLgo+IFNv
IHJlLWxpY2Vuc2UgaXQgYXMgZHVhbCBNSVQvR1BMIGFuZCByZXBsYWNlIGxpY2Vuc2UgdGV4dCB3
aXRoCj4gU1BEWCB0YWcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBYaWFvbGVpIExpIDx4aWFvbGVpLmxp
QG1lZGlhdGVrLmNvbT4KPiBBY2tlZC1ieTogSm9yZ2UgUmFtaXJlei1PcnRpeiA8am9yZ2UucmFt
aXJlei1vcnRpekBsaW5hcm8ub3JnPgo+IEFja2VkLWJ5OiBSeWRlciBMZWUgPHJ5ZGVyLmxlZUBt
ZWRpYXRlay5jb20+Cj4gQWNrZWQtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5w
bD4KPiBBY2tlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4K
PiBBY2tlZC1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNv
bT4KPiBBY2tlZC1ieTogV2VuIFlhbmcgPHllbGxvd3JpdmVyMjAxMEBob3RtYWlsLmNvbT4KPiBB
Y2tlZC1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgo+IEFja2Vk
LWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+IEFja2VkLWJ5OiBNYXNhaGlybyBZ
YW1hZGEgPHlhbWFkYS5tYXNhaGlyb0Bzb2Npb25leHQuY29tPgo+IC0tLQo+ICBkcml2ZXJzL210
ZC9uYW5kL3Jhdy9tdGtfZWNjLmMgIHwgMTIgKystLS0tLS0tLS0tCj4gIGRyaXZlcnMvbXRkL25h
bmQvcmF3L210a19lY2MuaCAgfCAgNCArLS0tCj4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L210a19u
YW5kLmMgfCAxMiArKy0tLS0tLS0tLS0KCgoKCgpodHRwczovL3d3dy5nbnUub3JnL2xpY2Vuc2Vz
L2lkZW50aWZ5LWxpY2Vuc2VzLWNsZWFybHkuaHRtbApzYXlzOgoiQnV0IHRyb3VibGUgd2lsbCBo
YXBwZW4gZXZlbiBkdXJpbmcgeW91ciBsaWZldGltZS4gV2hhdCBpZiB3ZSByZWxlYXNlCkdOVSBH
UEwgdmVyc2lvbiA0CnRlbiB5ZWFycyBmcm9tIG5vdywgYW5kIGJ5IHRoYXQgdGltZSA1MCBvdGhl
cnMgaGF2ZSBhZGRlZCB0byB5b3VyCnByb2dyYW0sIHJlbGVhc2luZwp0aGVpciBhZGRlZCBjb2Rl
IHVuZGVyIEdQTC0zLjAtb25seSBzaW1wbHkgYmVjYXVzZSB5b3UgZGlkPyBZb3UgY291bGQKYXBw
cm92ZSBHUEwgNCBmb3IKdGhlIHByb2dyYW0geW91IGluaXRpYWxseSByZWxlYXNlZCwgYnV0IGl0
IHdvdWxkIGJlIGEgYmlnIGpvYiB0bwpjb250YWN0IHRoZSA1MCBzdWJzZXF1ZW50CmRldmVsb3Bl
cnMgYXQgdGhhdCB0aW1lIHRvIGdldCB0aGVpciBwZXJtaXNzaW9uIGZvciBHUEwgNCB1c2FnZSBv
Zgp0aGVpciBhZGRpdGlvbnMuIgoKClRoaXMgaW1wbGllcyB0aGUgcmUtbGljZW5zaW5nIGlzIHJl
YWxseSBkaWZmaWN1bHQKb25jZSB5b3UgbWFrZSBpdCBhdmFpbGFibGUgaW4gb3BlbiBzb3VyY2Uu
CgoKWW91IHNob3VsZCBtYWtlIHN1cmUgaWYgd2UgaGF2ZSBjb3ZlcmVkIGFsbCB0aGUgY29udHJp
YnV0b3JzLgooUHJvYmFibHksIHRnbHggaXMgT0ssIGhlIGp1c3QgY29udmVydGVkIFNQRFguKQoK
CkNvbnRyaWJ1dG9ycyB0byBtdGtfZWNjLmM6CiQgZ2l0IGxvZyAgLS1mb2xsb3cgLS1wcmV0dHk9
Zm9ybWF0OiclYW4nCmRyaXZlcnMvbXRkL25hbmQvcmF3L210a19lY2MuYyB8IHNvcnQgfCB1bmlx
CkFybmQgQmVyZ21hbm4KQm9yaXMgQnJlemlsbG9uCkRhbiBDYXJwZW50ZXIKR3VzdGF2byBBLiBS
LiBTaWx2YQpKb3JnZSBSYW1pcmV6LU9ydGl6ClJvZ2VyQ0MgTGluClJ5ZGVyIExlZQpUaG9tYXMg
R2xlaXhuZXIKV2VuIFlhbmcKWGlhb2xlaSBMaQoKCkNvbnRyaWJ1dG9ycyB0byBtdGtfZWNjLmg6
CiQgZ2l0IGxvZyAgLS1mb2xsb3cgLS1wcmV0dHk9Zm9ybWF0OiclYW4nCmRyaXZlcnMvbXRkL25h
bmQvcmF3L210a19lY2MuaCB8IHNvcnQgfCB1bmlxCkJvcmlzIEJyZXppbGxvbgpKb3JnZSBSYW1p
cmV6LU9ydGl6ClJvZ2VyQ0MgTGluClhpYW9sZWkgTGkKCgpDb250cmlidXRvcnMgdG8gbXRrX25h
bmQuYzoKJCBnaXQgbG9nICAtLWZvbGxvdyAtLXByZXR0eT1mb3JtYXQ6JyVhbicKZHJpdmVycy9t
dGQvbmFuZC9yYXcvbXRrX25hbmQuYyB8IHNvcnQgfCB1bmlxCkJvcmlzIEJyZXppbGxvbgpKb3Jn
ZSBSYW1pcmV6LU9ydGl6Ck1hc2FoaXJvIFlhbWFkYQpNaXF1ZWwgUmF5bmFsClJhZmHFgiBNacWC
ZWNraQpSb2dlckNDIExpbgpSeWRlciBMZWUKVGhvbWFzIEdsZWl4bmVyCldlaSBZb25nanVuClhp
YW9sZWkgTGkKCgoKRm9yIGV4YW1wbGUsIGhvdyBhYm91dCB0aGUgYXV0aG9yIG9mIHRoZSBmb2xs
b3dpbmcgY29tbWl0PwoKSGUgd29ya3MgZm9yIHRoZSBzYW1lIGNvbXBhbnksIHNvIGp1c3QgYXNr
IGhpbS4KCgpjb21taXQgYjQ1ZWU1NTAxZWRlOWEzNjllOWJjMjBlZGNhNTA4MTkzYjg0OGQyNQpB
dXRob3I6IFJvZ2VyQ0MgTGluIDxyb2dlcmNjLmxpbkBtZWRpYXRlay5jb20+CkRhdGU6ICAgVGh1
IE5vdiAzMCAyMjoxMDo0NCAyMDE3ICswODAwCgogICAgbXRkOiBuYW5kOiBtdGs6IFN1cHBvcnQg
ZGlmZmVyZW50IE1USyBOQU5EIGZsYXNoIGNvbnRyb2xsZXIgSVAKCgoKCgoKPiAgMyBmaWxlcyBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbXRkL25hbmQvcmF3L210a19lY2MuYyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L210
a19lY2MuYwo+IGluZGV4IDA1YjBjMTlkNzJkOS4uNzQ1OTViNjQ0YjdjIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbXRkL25hbmQvcmF3L210a19lY2MuYwo+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQv
cmF3L210a19lY2MuYwo+IEBAIC0xLDE3ICsxLDkgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAgT1IgTUlUCj4gIC8qCj4gICAqIE1USyBFQ0MgY29udHJvbGxlciBkcml2
ZXIuCj4gICAqIENvcHlyaWdodCAoQykgMjAxNiAgTWVkaWFUZWsgSW5jLgo+ICAgKiBBdXRob3Jz
OiAgICBYaWFvbGVpIExpICAgICAgICAgICAgICA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+Cj4g
ICAqICAgICAgICAgICAgIEpvcmdlIFJhbWlyZXotT3J0aXogICAgIDxqb3JnZS5yYW1pcmV6LW9y
dGl6QGxpbmFyby5vcmc+Cj4gLSAqCj4gLSAqIFRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJl
OyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IgbW9kaWZ5Cj4gLSAqIGl0IHVuZGVyIHRo
ZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgdmVyc2lvbiAyIGFzCj4g
LSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLgo+IC0gKgo+IC0g
KiBUaGlzIHByb2dyYW0gaXMgZGlzdHJpYnV0ZWQgaW4gdGhlIGhvcGUgdGhhdCBpdCB3aWxsIGJl
IHVzZWZ1bCwKPiAtICogYnV0IFdJVEhPVVQgQU5ZIFdBUlJBTlRZOyB3aXRob3V0IGV2ZW4gdGhl
IGltcGxpZWQgd2FycmFudHkgb2YKPiAtICogTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1MgRk9S
IEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQo+IC0gKiBHTlUgR2VuZXJhbCBQdWJsaWMg
TGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgo+ICAgKi8KPgo+ICAjaW5jbHVkZSA8bGludXgvcGxh
dGZvcm1fZGV2aWNlLmg+Cj4gQEAgLTYwNCw0ICs1OTYsNCBAQCBtb2R1bGVfcGxhdGZvcm1fZHJp
dmVyKG10a19lY2NfZHJpdmVyKTsKPgo+ICBNT0RVTEVfQVVUSE9SKCJYaWFvbGVpIExpIDx4aWFv
bGVpLmxpQG1lZGlhdGVrLmNvbT4iKTsKPiAgTU9EVUxFX0RFU0NSSVBUSU9OKCJNVEsgTmFuZCBF
Q0MgRHJpdmVyIik7Cj4gLU1PRFVMRV9MSUNFTlNFKCJHUEwiKTsKPiArTU9EVUxFX0xJQ0VOU0Uo
IkR1YWwgTUlUL0dQTCIpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtf
ZWNjLmggYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfZWNjLmgKPiBpbmRleCBhNDU1ZGYwODA5
NTIuLjBlNDhjMzZlNmNhMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtf
ZWNjLmgKPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfZWNjLmgKPiBAQCAtMSwxMiAr
MSwxMCBAQAo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCBPUiBNSVQgKi8K
PiAgLyoKPiAgICogTVRLIFNERzEgRUNDIGNvbnRyb2xsZXIKPiAgICoKPiAgICogQ29weXJpZ2h0
IChjKSAyMDE2IE1lZGlhdGVrCj4gICAqIEF1dGhvcnM6ICAgIFhpYW9sZWkgTGkgICAgICAgICAg
ICAgIDx4aWFvbGVpLmxpQG1lZGlhdGVrLmNvbT4KPiAgICogICAgICAgICAgICAgSm9yZ2UgUmFt
aXJlei1PcnRpeiAgICAgPGpvcmdlLnJhbWlyZXotb3J0aXpAbGluYXJvLm9yZz4KPiAtICogVGhp
cyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9v
ciBtb2RpZnkgaXQKPiAtICogdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJs
aWMgTGljZW5zZSB2ZXJzaW9uIDIgYXMgcHVibGlzaGVkCj4gLSAqIGJ5IHRoZSBGcmVlIFNvZnR3
YXJlIEZvdW5kYXRpb24uCj4gICAqLwo+Cj4gICNpZm5kZWYgX19EUklWRVJTX01URF9OQU5EX01U
S19FQ0NfSF9fCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L210a19uYW5kLmMg
Yi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfbmFuZC5jCj4gaW5kZXggNjE3Zjk2NTZhMDQ1Li4z
NzNkNDdkMWJhNGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX25hbmQu
Ywo+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L210a19uYW5kLmMKPiBAQCAtMSwxNyArMSw5
IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wIE9SIE1JVAo+ICAvKgo+
ICAgKiBNVEsgTkFORCBGbGFzaCBjb250cm9sbGVyIGRyaXZlci4KPiAgICogQ29weXJpZ2h0IChD
KSAyMDE2IE1lZGlhVGVrIEluYy4KPiAgICogQXV0aG9yczogICAgWGlhb2xlaSBMaSAgICAgICAg
ICAgICAgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPgo+ICAgKiAgICAgICAgICAgICBKb3JnZSBS
YW1pcmV6LU9ydGl6ICAgICA8am9yZ2UucmFtaXJlei1vcnRpekBsaW5hcm8ub3JnPgo+IC0gKgo+
IC0gKiBUaGlzIHByb2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1dGUg
aXQgYW5kL29yIG1vZGlmeQo+IC0gKiBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBHZW5l
cmFsIFB1YmxpYyBMaWNlbnNlIHZlcnNpb24gMiBhcwo+IC0gKiBwdWJsaXNoZWQgYnkgdGhlIEZy
ZWUgU29mdHdhcmUgRm91bmRhdGlvbi4KPiAtICoKPiAtICogVGhpcyBwcm9ncmFtIGlzIGRpc3Ry
aWJ1dGVkIGluIHRoZSBob3BlIHRoYXQgaXQgd2lsbCBiZSB1c2VmdWwsCj4gLSAqIGJ1dCBXSVRI
T1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBldmVuIHRoZSBpbXBsaWVkIHdhcnJhbnR5IG9mCj4g
LSAqIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4g
IFNlZSB0aGUKPiAtICogR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgZm9yIG1vcmUgZGV0YWls
cy4KPiAgICovCj4KPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+IEBAIC0x
NjUzLDYgKzE2NDUsNiBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBtdGtfbmZjX2Ry
aXZlciA9IHsKPgo+ICBtb2R1bGVfcGxhdGZvcm1fZHJpdmVyKG10a19uZmNfZHJpdmVyKTsKPgo+
IC1NT0RVTEVfTElDRU5TRSgiR1BMIik7Cj4gK01PRFVMRV9MSUNFTlNFKCJEdWFsIE1JVC9HUEwi
KTsKPiAgTU9EVUxFX0FVVEhPUigiWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+
Iik7Cj4gIE1PRFVMRV9ERVNDUklQVElPTigiTVRLIE5hbmQgRmxhc2ggQ29udHJvbGxlciBEcml2
ZXIiKTsKPiAtLQo+IDIuMTguMAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxp
c3QKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10
ZC8KCgoKLS0gCkJlc3QgUmVnYXJkcwpNYXNhaGlybyBZYW1hZGEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlz
dApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
